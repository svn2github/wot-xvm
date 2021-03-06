﻿/**
 * ...
 * @author sirmax2
 */
import wot.utils.Defines;
import wot.utils.Utils;

class wot.utils.Logger
{
  public static var counter: Number = 0;

  public static var dummy; // avoid import warning

  public static function add(str: String)
  {
    var a: Array = ("[" + Utils.padLeft(String(counter++), 3, '0') + "] " + str).split("");
    var s: String = "";
    var a_length = a.length;
    for (var i = 0; i < a_length; ++i)
      s += Utils.padLeft(a[i].charCodeAt(0).toString(16), 2, '0');
    s = s.length.toString(16) + "," + s;

    var command = Defines.COMMAND_LOG + " ";
    var max_len = Defines.MAX_PATH - command.length;
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
    add((name || "[obj]") + ": " + com.xvm.JSON.stringifyDepth(obj, depth));
  }
}
