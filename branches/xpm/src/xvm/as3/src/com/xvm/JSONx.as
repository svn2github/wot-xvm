/*
Copyright (c) 2005 JSON.org
Copyright (c) 2013 m.schedriviy@gmail.com (JSONx extension)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The Software shall be used for Good, not Evil.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

/*
 JSONx extensions:
    1. Comments:
        Block: /* *_/
        Line: //
    2. References:
        Internal: "obj": ${"path.to.object"}
        External: "obj": ${"filename":"path.to.object"}
        Root object: "obj": ${"."}
*/

/*
ported to Actionscript May 2005 by Trannie Carter <tranniec@designvox.com>, wwww.designvox.com
USAGE:
	try {
		var o:Object = JSON.parse(jsonStr);
		var s:String = JSON.stringify(obj);
	} catch(ex) {
		trace(ex.name + ":" + ex.message + ":" + ex.at + ":" + ex.text);
	}

*/

package com.xvm
{
    import adobe.utils.CustomActions;
    import flash.display.Stage;
    import flash.text.TextField;
    import flash.utils.describeType;
    
    public class JSONx
    {
        public static function stringifyDepth(arg:*, depth:int = 1):String
        {
            return (new JSONx(depth))._stringify(arg);
        }

        public static function stringify(arg:*, indent:String = '', compact:Boolean = false):String
        {
            return (new JSONx())._stringify(arg, indent, compact);
        }

        public static function parse(text:String):Object
        {
            return (new JSONx())._parse(text);
        }
        
        // PRIVATE
        
        private var maxDepth:int;
        private var curDepth:int;

        function JSONx(depth:int = 0)
        {
            maxDepth = depth;
            curDepth = 0;
        }
        
        private function _stringify(arg:*, indent:String = '', compact:Boolean = false):String
        {
            var s:String = '';
            
            //Logger.add(indent + typeof arg);
            
            switch (typeof arg)
            {
                case 'object':
                    if (arg == null || arg.toString == undefined)
                        return 'null';
                    
                    if (maxDepth > 0 && curDepth >= maxDepth)
                        return _stringify(arg.toString(), '', compact);
                    
                    curDepth++;
                    try
                    {
                        if (arg is Array)
                        {
                            var len:int = arg.length;
                            for (var i:int = 0; i < len; ++i) {
                                var v:String = _stringify(arg[i], compact ? '' : indent + '  ', compact);
                                if (s != '')
                                    s += compact ? ',' : ',\n';
                                s += compact ? v : indent + '  ' + v;
                            }
                            return compact ? '[' + s + ']' : '[\n' + s + '\n' + indent + ']';
                        }
                        else
                        {
                            var description:XML = describeType(arg);
                            for each (var ac:XML in description.accessor)
                            {
                                var n:String = ac.@name;
                                var v:String = _stringify((arg[n] as Object), compact ? '' : indent + '  ', compact);
                                if (s != '')
                                    s += compact ? ',' : ',\n';
                                s += compact
                                    ? _stringify(n, '', true) + ':' + v
                                    : indent + '  ' + _stringify(n, indent + '  ', false) + ': ' + v;
                            }
                            return compact
                                ? '{' + s + '}'
                                : '{ // ' + arg.toString() + '\n' + s + '\n' + indent + '}';
                        }
                    }
                    finally
                    {
                        curDepth--;
                    }
                    return 'null';
                
                case 'number':
                    return isFinite(arg) ? String(arg) : 'null';
                
                case 'boolean':
                    return String(arg);
                
                case 'string':
                    s = '"';
                    var l:int = arg.length;
                    for (i = 0; i < l; i += 1)
                    {
                        var c:String = arg.charAt(i);
                        if (c >= ' ') {
                            if (c == '\\' || c == '"')
                                s += '\\';
                            if (c == '%')
                                s += '\\u0025';
                            else
                                s += c;
                        }
                        else
                        {
                            switch (c) {
                                case '\b':
                                    s += '\\b';
                                    break;
                                case '\f':
                                    s += '\\f';
                                    break;
                                case '\n':
                                    s += '\\n';
                                    break;
                                case '\r':
                                    s += '\\r';
                                    break;
                                case '\t':
                                    s += '\\t';
                                    break;
                                default:
                                    var cc:int = c.charCodeAt();
                                    s += '\\u00' + Math.floor(cc / 16).toString(16) + (cc % 16).toString(16);
                            }
                        }
                    }
                    return s + '"';
                    
                case 'null':
                    return 'null';
                
                default:
                    return 'null' + (compact ? '' : ' // ' + (typeof arg));
            }
        }

        private function _parse(text:String):Object {
        if (!text || text == "")
            return null;
        var ta: Array = text.split(''); // charAt is much slower in Flash then array
        var talen = ta.length;
        var at = 0;
        var ch = ' ';
        var _value:Function;

        var _error:Function = function (m) {
            throw {
                name: 'JSONxError',
                message: m,
                at: at - 1,
                text: text
            };
        }

        var _next:Function = function() {
            ch = (at >= talen) ? '' : ta[at];
            at++;
            return ch;
        }

        var _white:Function = function() {
            while (ch) {
                if (ch <= ' ') {
                    _next();
                } else if (ch == '/') {
                    switch (_next()) {
                        case '/':
                            while (_next() && ch != '\n' && ch != '\r') {}
                            break;
                        case '*':
                            _next();
                            for (;;) {
                                if (ch) {
                                    if (ch == '*') {
                                        if (_next() == '/') {
                                            _next();
                                            break;
                                        }
                                    } else {
                                        _next();
                                    }
                                } else {
                                    _error("Unterminated comment");
                                }
                            }
                            break;
                        default:
                            _error("Syntax error");
                    }
                } else {
                    break;
                }
            }
        }

        var _string:Function = function() {
            var i, s = '', t, u;
                        var outer:Boolean = false;

            if (ch == '"') {
                                while (_next()) {
                    if (ch == '"') {
                        _next();
                        return s;
                    } else if (ch == '\\') {
                        switch (_next()) {
                        case 'b':
                            s += '\b';
                            break;
                        case 'f':
                            s += '\f';
                            break;
                        case 'n':
                            s += '\n';
                            break;
                        case 'r':
                            s += '\r';
                            break;
                        case 't':
                            s += '\t';
                            break;
                        case 'u':
                            u = 0;
                            for (i = 0; i < 4; i += 1) {
                                t = parseInt(_next(), 16);
                                if (!isFinite(t)) {
                                    outer = true;
                                    break;
                                }
                                u = u * 16 + t;
                            }
                            if(outer) {
                                outer = false;
                                break;
                            }
                            s += String.fromCharCode(u);
                            break;
                        default:
                            s += ch;
                        }
                    } else {
                        s += ch;
                    }
                }
            }
            _error("Bad string");
        }

        var _array:Function = function() {
            var a = [];

            _next();
            _white();
            if (ch == ']') {
                _next();
                return a;
            }
            while (ch) {
                a.push(_value());
                _white();
                if (ch == ']') {
                    _next();
                    return a;
                } else if (ch != ',') {
                    break;
                }
                _next();
                _white();
            }
            _error("Bad array");
        }

        // {...}
        var _object:Function = function() {
            var k, o = {};

            _next();
            _white();
            if (ch == '}') {
                _next();
                return o;
            }
            while (ch) {
                k = _string();
                _white();
                if (ch != ':') {
                    break;
                }
                _next();
                o[k] = _value();
                _white();
                if (ch == '}') {
                    _next();
                    return o;
                } else if (ch != ',') {
                    break;
                }
                _next();
                _white();
            }
            _error("Bad object");
        }

        // ${...}
        var _reference:Function = function() {
            var f, p;

            _next();
            if (ch == '{') {
                _next();
                _white();
                if (ch == '}') {
                    _next();
                    return null;
                }
                while (ch) {
                    p = _string();
                    _white();
                    if (ch == ':') {
                        _next();
                        f = p;
                        p = _string();
                        _white();
                    }
                    if (ch != '}')
                        break;
                    _next();
                    return { $ref: { file: f, path: p } };
                }
            }
            _error("Bad reference");
        }

        var _number:Function = function() {
            var n = '', v;

            if (ch == '-') {
                n = '-';
                _next();
            }
            while (ch >= '0' && ch <= '9') {
                n += ch;
                _next();
            }
            if (ch == '.') {
                n += '.';
                while (_next() && ch >= '0' && ch <= '9') {
                    n += ch;
                }
            }
            //v = +n;
            v = 1 * Number(n);
            if (!isFinite(v)) {
                _error("Bad number");
            } else {
                return v;
            }
        }

        var _word:Function = function() {
            switch (ch) {
                case 't':
                    if (_next() == 'r' && _next() == 'u' && _next() == 'e') {
                        _next();
                        return true;
                    }
                    break;
                case 'f':
                    if (_next() == 'a' && _next() == 'l' && _next() == 's' &&
                            _next() == 'e') {
                        _next();
                        return false;
                    }
                    break;
                case 'n':
                    if (_next() == 'u' && _next() == 'l' && _next() == 'l') {
                        _next();
                        return null;
                    }
                    break;
            }
            _error("Syntax error");
        }

        _value = function() {
            _white();
            switch (ch) {
                case '$':
                    return _reference();
                case '{':
                    return _object();
                case '[':
                    return _array();
                case '"':
                    return _string();
                case '-':
                    return _number();
                default:
                    return ch >= '0' && ch <= '9' ? _number() : _word();
            }
        }

        return _value();
        }
    }
}
