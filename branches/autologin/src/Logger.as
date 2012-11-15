/**
 * ...
 * @author sirmax2
 */
class Logger
{
  public static var counter: Number = 0;

  public static var dummy; // avoid import warning

  public static function add(str: String)
  {
    var a: Array = ("[" + String(counter++) + "] " + str).split("");
    var s: String = "";
    var a_length = a.length;
    for (var i = 0; i < a_length; ++i)
    {
      var b = a[i].charCodeAt(0);
      if (b < 32 && b != 10 && b != 13 && b != 9) // '\n', '\r', '\t'
      {
        b = 96; // '`'
        //b = 126; // '~'
      }
      s += b.toString(16);
    }
    s = s.length.toString(16) + "," + s;

    var command = "../../../.stat/@LOG ";
    var max_len = 199 - command.length;
    var p = new LoadVars();
    while (s.length > max_len)
    {
      p.load(command + s.slice(0, max_len));
      s = s.slice(max_len);
    }
    p.load(command + s);
  }

  public static function addObject(obj: Object, name: String, depth: Number)
  {
    if (isNaN(depth) || depth < 1)
      depth = 1;
    if (depth > 10)
      depth = 10;
    add((name || "[obj]") + ": " + JSON.stringifyDepth(obj, depth));
  }
}
