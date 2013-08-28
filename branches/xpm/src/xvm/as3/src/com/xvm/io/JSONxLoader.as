/**
 * Loader for JSONx format (JSON with references)
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.io
{
    import com.xvm.io.JSONx;
    import com.xvm.Logger;
    import flash.display.Loader;
    import flash.events.Event;
    import flash.net.URLLoader;
    import flash.net.URLRequest;

    public class JSONxLoader
    {
        private var rootPath:Object;
        private var rootFileName:Object;
        private var target:Object;
        private var callback:Function;

        private var file_cache:Object = { };
        private var obj_cache:Object = { };
        private var pendingFiles:Array = [ ];

        private var rootObj:Object;

        public static function LoadAndParse(filename:String, target:Object, callback:Function):void
        {
            (new JSONxLoader(filename, target, callback)).LoadFiles();
        }

        // PRIVATE

        function JSONxLoader(rootFileName:String, target:Object, callback:Function)
        {
            var a:Array = rootFileName.split("\\").join("/").split("/");
            this.rootFileName = a.pop();
            this.rootPath = a.length > 0 ? a.join("/") + "/" : "";
            this.target = target;
            this.callback = callback;
            this.pendingFiles = [ this.rootFileName ];
            this.rootObj = {$ref: { file: this.rootFileName, path: "." }};
        }

        private var loadingCount:Number;
        private function LoadFiles():void
        {
            Logger.add("LoadFiles: ['" + pendingFiles.join("', '") + "']");
            loadingCount = pendingFiles.length;
            for (var i:Number = 0; i < loadingCount; ++i)
                LoadFile(pendingFiles[i]);
            pendingFiles = [ ];
        }

        private function LoadFile(filename:String):void
        {
            var me:JSONxLoader = this;
            var loader:URLLoader = new URLLoader();
            loader.addEventListener(Event.COMPLETE, function(e:Event):void {
                //Logger.add("onData: " + filename);
                me.file_cache[filename] = e.target.data;
                if (!--me.loadingCount)
                    me.LoadFileCallback.call(me);
            });
            try {
                loader.load(new URLRequest(rootPath + filename));
            } catch (error:Error) {
                trace("Unable to load requested document.");
            }
            //lv.onData = function(str:String) {
                //Logger.add("onData: " + filename);
                //me.file_cache[filename] = str;
                //if (!--me.loadingCount)
                    //me.LoadFileCallback.call(me);
            //}
            //Logger.add("lv.load: " + rootPath + filename);
            //lv.load(rootPath + filename);
        }

        private function LoadFileCallback():void
        {
            //Logger.add("LoadFileCallback");
            try
            {
                //Logger.addObject(rootObj, "rootObj", 2);
                //Logger.addObject(rootObj.markers.ally.alive.normal, "marker", 10);
                rootObj = Deref(rootObj);
                //Logger.addObject(pendingFiles, "pendingFiles", 2);
                if (pendingFiles.length > 0)
                    LoadFiles();
                else
                {
                    //Logger.addObject(rootObj, "config", 10);
                    //Logger.addObject(rootObj.markers.ally.alive.normal, "marker", 10);
                    callback.call(target, { data:rootObj, filename:rootFileName } );
                }
            }
            catch (ex:*)
            {
                callback.call(target, ex);
            }
        }

        private function Deref(data:Object, level:int = 0, file:String = null, obj_path:String = null):Object
        {
            //Logger.add(file);
            //Logger.addObject(data, "Deref:" + level, 4);
            // limit of recursion
            if (level > 32)
                return data;

            if (data == null)
                return null;

            // scalar
            if (typeof data.toString == 'undefined')
                return data;

            if (!obj_path)
                obj_path = "";

            // array
            if (data is Array) // array
            {
                var len:int = data.length;
                for (var i:int = 0; i < len; ++i)
                    data[i] = Deref(data[i], level + 1, file, obj_path + "[" + i + "]");
                return data;
            }

            // object
            if (data.$ref == null)
            {
                for (var n:String in data)
                {
                    data[n] = Deref(data[n], level + 1, file, (obj_path == "" ? "" : obj_path + ".") + n);
                    //Logger.addObject(data[n], i, 2);
                }
                return data;
            }

            // reference
            //   "$ref": { "file": "...", "line": "..." }

            //Logger.addObject(data, "Deref[" + level + "]", 2);

            if (data.$ref.$ref != null)
                throw { type: "BAD_REF", message: "endless reference recursion in " + file + ", " + obj_path};

            var fn:String = data.$ref.abs_path;
            if (!fn)
            {
                var d:Object = splitDir(file || "");
                fn = (d.d + (data.$ref.file || d.f));
            }

            //Logger.add("fn: " + fn);

            if (!file_cache.hasOwnProperty(fn))
            {
                //Logger.add("fn: " + fn + " (pending)");
                data.$ref.abs_path = fn;
                var found:Boolean = false;
                var len2:int = pendingFiles.length;
                for (var j:int = 0; j < len2; ++j)
                {
                    if (pendingFiles[j] == fn)
                    {
                        found = true;
                        break;
                    }
                }
                if (!found)
                    pendingFiles.push(fn);
            }
            else
            {
                //Logger.add("fn: " + fn + " (loaded)");
                try
                {
                    if (!obj_cache.hasOwnProperty(fn))
                        obj_cache[fn] = JSONx.parse(file_cache[fn]);
                    if (obj_cache[fn] == null)
                        throw { type: fn == rootFileName ? "NO_FILE" : "NO_REF_FILE", message: "file is missing: " + fn };
                    var value:* = getValue(obj_cache[fn], data.$ref.path);
                    //Logger.add(data.$ref.path + ": " + String(value));
                    if (value === undefined)
                        throw { type: "BAD_REF", message: "bad reference:\n    ${\"" + data.$ref.file + "\":\"" + data.$ref.path + "\"}" };

                    // override referenced values
                    //   "damageText": {
                    //     "$ref": { "path":"def.damageText" },
                    //     "damageMessage": "all {{dmg}}"
                    //    }

                    for (var n2:String in data)
                    {
                        if (n2 != "$ref")
                            value[n2] = data[n2];
                    }

                    // deref result
                    data = Deref(value, level + 1, fn, obj_path);
                    //Logger.addObject(data);
                }
                catch (ex:*)
                {
                    throw ex.error ? ex : { error: ex, filename: fn };
                }
            }

            return data;
        }

        private function getValue(obj:*, path: String):*
        {
            //Logger.add("getValue: " + path);

            if (obj === undefined)
                return undefined;

            if (path == "." || path == "")
                return obj;

            var p: Array = path.split("."); // "path.to.value"
            var o:* = obj;
            var p_len:Number = p.length;
            for (var i:Number = 0; i < p_len; ++i)
            {
                if (!o.hasOwnProperty(p[i]))
                    return undefined;
                o = o[p[i]];
            }
            return o == null ? null : clone(o);
        }

        private function clone(obj:Object):Object
        {
            return JSONx.parse(JSONx.stringify(obj, "", true));
        }

        private function splitDir(path:String):Object
        {
            var fileArray:Vector.<String> = Vector.<String> (path.split("\\").join("/").split("/"));
            return {
                f: fileArray.pop(),
                d: fileArray.length > 0 ? fileArray.join("/") + "/" : ""
            };
        }
    }
}
