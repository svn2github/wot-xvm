/**
 * XVM Logger
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
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

        public static function addObject(obj:Object, name:String = "obj", depth:Number = 1):void
        {
            add(name + ": " + JSONx.stringifyDepth(obj, depth));
            //Cmd.log(_addObject(obj, name, depth));
        }
    }
}
