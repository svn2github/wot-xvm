package com.xvm
{
    import flash.utils.*;
    import com.xvm.Cmd;
    //import com.adobe.serialization.json.JSONEncoder;

    public class Logger
    {
        private static var counter:int = 0;
        
        public static function add(str:String):void
        {
            try
            {
                Cmd.log("[" + Sandbox.GetCurrentSandboxPrefix() + ":" + Strings.padLeft(String(counter++), 3, '0') + "] " + str);
            }
            catch(e:Error)
            {
                // quiet
            }
        }

        public static function addObject(obj:Object, name:String = "obj", depth:Number = 1, _indent:String = "", _depth:Number = 0):void
        {
            Cmd.log(_addObject(obj, name, depth));
        }

        public static function _addObject(obj:Object, name:String = "obj", depth:Number = 1, _indent:String = "    ", _depth:Number = 0):String
        {
            if (isNaN(depth) || depth < 1)
                depth = 1;
            if (depth > 10)
                depth = 10;
            if (_depth > depth)
                return String(obj);

            try
            {
                var s:String = _depth == 0 ? name + ":" + obj == null ? "(null)" : obj.toString() : "";
                var description:XML = describeType(obj);
                for each (var a:XML in description.accessor)
                {
                    s += "\n" + _indent + a.@name + ":" + a.@type + " = ";
                    var value:* = obj[a.@name]
                    if (value == null)
                        s += "(null)";
                    else
                    {
                        switch (a.@type)
                        {
                            case "Number":
                            case "int":
                            case "uint":
                            case "Boolean":
                                s += String(value);
                                break;
                            case "String":
                                s += "\"" + value + "\"";
                                break;
                            case "Array": // TODO
                            case "Object": // TODO
                                s += _addObject(value, a.@name, depth, _indent + "    ", _depth + 1)
                            default:
                                s += value.toString();
                        }
                    }
                }

                for each (var b:XML in description.method)
                {
                    s += "\n" + _indent + b.@name + ":" + b.@returnType + " = ";
                    s += value == null ? "(null)" : obj[b.@name].toString();
                }

                return s;
            }
            catch (e:Error)
            {
                Cmd.log("Error: " + e.message);
            }
            return null;
        }
    }
}
