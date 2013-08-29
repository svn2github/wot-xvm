/**
 * XVM Config
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.cfg
{
    public dynamic class CConfig extends Object
    {
        public var configVersion:String;
        public var editorVersion:String;
        public var language:String; // auto, en, ru, ...
        public var definition:CDefinition;
        public var rating:CRating;
        public var login:CLogin;
        public var hangar:CHangar;
        public var battle:CBattle;
        public var colors:CColors;
        public var alpha:CAlpha;
        public var texts:CTexts;
        public var vehicleNames:CVehicleNames;
        public var consts:Object; // internal
    }
}
