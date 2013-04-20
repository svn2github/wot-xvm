#!/bin/sh
LANG=C

[ "$host" = "" ] && exit

tmpfn=".top.$host.html.~"

get()
{
  echo "Loading ratings page..."
  rm -f "$tmpfn"
  wget -qc "$url" -O "$tmpfn"
}

parse_ivanerr()
{
  echo "Searching new top clans..."
  i=0
  cat "$tmpfn" | grep -E "^\s+<td><a " | while read line; do
    clan=`echo $line | cut -d\> -f3 | cut -d\< -f1`
    id=`echo $line | cut -d/ -f4 | cut -d\" -f1`
    l="$clan $id"

    i=$((i+1))
    [ $i -gt $top_count ] && return

    if ! grep -E "^$l\$" $topfile $topfile_persist > /dev/null; then
      echo
      echo "$i: $l"
      echo "$l" >> $topfile
    else
      echo -n .
      [ "$((i%10))" -eq 0 ] && echo -n $i
    fi
  done
  echo
}

parse_null()
{
  echo "Searching clans ids..."
  rm -f "$tmpfn"
  i=0
  cat $topfile $topfile_persist | while read line; do
    i=$((i+1))
    clan=`echo $line | cut -d' ' -f1`
    id=`echo "$line " | cut -d' ' -f2`

    echo -n .
    [ "$((i%10))" -eq 0 ] && echo -n $i
    if [ "$id" = "" ]; then
      echo
      echo -n "$clan "
      args="type=table&offset=0&limit=100&search=$clan"
      id=`wget -qc "http://${host}/community/clans/?$args" -O - \
        --header="X-Requested-With: XMLHttpRequest" \
        --header="X-CSRFToken: e5966ca14a5e9c11961483fd636d548d" \
        --header="Referer: http://${host}/community/clans/" | \
        sed 's/"abbreviation": /\n/g' | grep -- "\"$clan\"" | \
        sed 's/.*"id": //g' | cut -d, -f1`
      echo $id
    fi
    echo "$clan $id" >> "$tmpfn"
  done

  mv -f "$tmpfn" $topfile
  echo
}

sort_topfile()
{
  echo "Sorting..."
  cat $topfile | sort | uniq > $topfile
}

update()
{
  echo "Updating icons..."
  rm -f top/res_mods/clanicons/$dir/clan/*
  i=0
  cat $topfile $topfile_persist | while read line; do
    i=$((i+1))
    clan=`echo $line | cut -d' ' -f1`
    id=`echo $line | cut -d' ' -f2`
    echo "$i: $clan $id"
    wget -qc http://$host/dcont/clans/emblems/$id/emblem_64x64.png -O top/res_mods/clanicons/$dir/clan/$clan.png 2>/dev/null
  done
}

optimize()
{
  echo "Optimizing PNGs..."
  (
    cd top/res_mods/clanicons/$dir/clan
    pngoptimizer -file:*.png
  )
}

#############
# main

if [ "$url" != "" ];then
  get
  parse_ivanerr
else
  parse_null
fi
sort_topfile
update
optimize
rm -f "$tmpfn"
