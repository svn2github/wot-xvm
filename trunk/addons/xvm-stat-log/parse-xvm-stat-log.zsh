#!/bin/sh

declare -A players
declare -A results
results_counter=0

# $1 - name
# $2 - data
# $3 - add_mask
get()
{
  value=$3${2#*\"$1\":$3}
  if [ "$value" = "$2" ]; then
    return
  fi
  if [ "${value:0:1}" = "{" ]; then
    value=${value%%\}*}}
  elif [ "${value:0:1}" = "[" ]; then
    value=${value%%]*}]
  else
    value=${value%%,*}
    value=${value%%\}*}
    value=${value/\"/}
    value=${value/\"/}
  fi
  echo $value
}

# [{
#   a: "playerId",
#         "a":6260143
#   b: "team",
#         "b":1
#   c: "stat",
#         "c":{"te":3,"cap":21607,"hip":51,"twr":0,"teff":560,"dmg":7337686,"tw":186,"teff2":736,
#              "def":6369,"ts":341,"tsb":0.8,"vn":"IS-3","tl":8,"wn":573,"td":339744,"tf":249,
#              "r":47,"tdb":786,"frg":8834,"tfb":0.6,"tb":432,"w":9153,"spo":19022,"id":5435596,
#              "b":19587,"tr":43,"clan":"G_S_A","avglvl":5.8,"tdv":0.5,"name":"ZINNURTIGER",
#              "e":690}
#   d: "vehicleId",
#         "d":"SU-100"
#   e: "label",
#         "e":"INSI74"
#   f: "clanAbbrev",
#         "f":""
#   g: "realVehicleId"
# },...]
process_setup()
{
  local pl id vehicle x b c
  echo $1 | sed "s/},{/\n/g" | while read pl; do
    id=$(get a "$pl")
    vehicle=$(get d "$pl")

    c=$(get c "$pl")
    b=$(get b "$c")

    if [ "$b" = "" ]; then
      echo "no battles: $id/$vehicle"
      continue
    fi

    echo -n "  <player" >> players.new.xml
    echo -n " "id=\"$id\" >> players.new.xml
    echo -n " "name=\"$(get name "$pl")\" >> players.new.xml
    echo -n " "vehicle=\"$vehicle\" >> players.new.xml
    echo -n " "vehId=\"$(get g "$pl")\" >> players.new.xml

    echo -n " "battles=\"$b\" >> players.new.xml
    echo -n " "gwr=\"$(get r "$c")\" >> players.new.xml
    echo -n " "level=\"$(get tl "$c")\" >> players.new.xml
    echo -n " "tbattles=\"$(get tb "$c")\" >> players.new.xml
    echo -n " "tr=\"$(get tr "$c")\" >> players.new.xml
    echo -n " "eff=\"$(get e "$c")\" >> players.new.xml
    echo -n " "wn6=\"$(get wn "$c")\" >> players.new.xml
    echo -n " "twr=\"$(get twr "$c")\" >> players.new.xml
    echo -n " "wins=\"$(get w "$c")\" >> players.new.xml
    echo -n " "twins=\"$(get tw "$c")\" >> players.new.xml
    x=$(get teff "$c")
    [ "$x" = "null" ] && x="0"
    echo -n " "teff=\"$x\" >> players.new.xml
    echo -n " "dmg=\"$(get dmg "$c")\" >> players.new.xml
    echo -n " "frg=\"$(get frg "$c")\" >> players.new.xml
    echo -n " "spo=\"$(get spo "$c")\" >> players.new.xml
    echo -n " "def=\"$(get def "$c")\" >> players.new.xml
    echo -n " "avgl=\"$(get avglvl "$c")\" >> players.new.xml
    echo -n " "cap=\"$(get cap "$c")\" >> players.new.xml
    echo "/>" >> players.new.xml
  done
}

# a: "team1" : [...],
# b: "team2" : [...],
# c: "common",
#  "c":{"b":2,"c":1353505545,"a":2,"f":"sirmax2","g":"Т-34-85","d":"win","e":7}
#   a: "finishReason",
#   b: "winnerTeam",
#   c: "arenaCreateTime",
#   d: "resultShortStr",
#   e: "arenaTypeID",
#   f: "playerNameStr",
#   g: "vehicleName"
# d: "dailyXPFactor"
#   "d":2
process_results()
{
  local pl a b c w t1 t2
  c=$(get c "$1" "{")
  w=$(get b "$c")
  c=$(get c "$c")

  if [ "${results[$c]}" = "1" ]; then
    echo "skip duplicate result: $c"
    continue
  fi
  results[$c]=1

  if [ "$w" = "1" ]; then
    t1=$(get a "$1" "[")
    t2=$(get b "$1" "[")
  else
    t1=$(get b "$1" "[")
    t2=$(get a "$1" "[")
  fi

  t1=$(process_results_2 "$t1" 1)
  t2=$(process_results_2 "$t2" 16)

  echo "  <result$t1$t2 created=\"$c\"/>" >> results.new.xml
}

#      [{
#        b: "vehicleId",
#        c: "playerId",
#        d: "name",
#        e: "team",
#        f: "vehicleFullName",
#        g: "squadID",
#        h:"isSelf",
#        i: "clanAbbrev",
#        //j: "vehicleStateStr",
#        k: "killerID",
#        l: "health",
#        m: "healthPercents",
#        n: "lifeTime",
#        o: "isTeamKiller",
#        p: "mileage",
#        q: "spotted",
#        r: "capturePoints",
#        s: "droppedCapturePoints",
#        t: "realKills",
#        u: "kills",
#        v: "damageAssisted",
#        w: "shots",
#        x: "hits",
#        y: "pierced",
#        z: "shotsReceived",
#        ac: "damaged",
#        ab: "damageReceived",
#        ad: "tdamageDealt",
#        ae: "damageDealt",
#        af: "xp",
#        ag: "freeXP",
#        ah: "credits",
#        ai: "repair",
#        aj: "typeCompDescr"
#      },...]
process_results_2()
{
  local c b
  n=$2
  echo $1 | sed "s/},{/\n/g" | while read pl; do
    #c=$(get c "$pl")
    #echo -n " id$n=\"$c\""
    b=$(get b "$pl")
    echo -n " vehId$n=\"$b\""
    n=$(($n+1))
  done
}

# skip
process_chance()
{
  return
}

echo "<results>" > results.new.xml
echo "<players>" > players.new.xml
for i in log/*.log; do
  total=$(wc -l $i | cut -d' ' -f1)
  curr=1
  n=${i%%.*}
  n=${n#*/}
  echo $n
  cat $i | while read line; do
    data=${line#*:}
    typ=${data%%:*}
    data=${data#*:}
    echo "  [$curr/$total] $typ"
    curr=$(($curr+1))
    process_$typ "$data"
  done
done
echo "</results>" >> results.new.xml
echo "</players>" >> players.new.xml