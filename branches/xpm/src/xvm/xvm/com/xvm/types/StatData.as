package com.xvm.types
{
    import flash.utils.Dictionary;

    public dynamic class StatData
    {
        // received
        public var up:Number;           // updated (int)
        public var e:Number;            // eff (int)
        public var def:Number           // defence (int)
        public var st:String;           // statud ("ok")
        public var nm:String;           // player name ("sirmax2")
        public var b:Number;            // battles (int)
        public var spo:Number;          // spotted (int)
        public var dmg:Number;          // damage (int)
        public var w:Number;            // wins (int)
        public var lvl:Number;          // level (float)
        public var twr:Number;          // TWR (int?)
        public var dt:Date;             // XVM update date ("2013-09-02T01:21:20.080Z"),
        public var frg:Number;          // frags
        public var _id:Number;          // player account id (long int)
        public var cr:Number;           // created (int)
        public var hip:Number;          // hit percent (int)
        public var vn:String;           // internal vehicle name ("IS-3")
        public var cap:Number;          // capture (int)
        public var wn:Number;           // WN6 rating
        public var vdata:Dictionary;    // vehicle stat data, key - vname
        public var v:VData;             // current vehicle stat data

        public var clan:String;         // clan name
        //public var name:String;         // player name in current game ("sirmax2_RU" for Common Test)
        //public var vname:String;        // localized vehicle name ("ИС-3")
        public var icon:String;         // icon file name without path: "ussr-IS-3.png")
        public var maxHealth:Number;    // maximum health (int)

        // calculated
        public var r:int;               // global win rate
        public var xeff:int;            // Eff in XVM Scale
        public var xwn:int;             // WN6 in XVM Scale
    }
}

class VData
{
    // received
    public var b:Number;
    public var w:Number;
    public var l:Number;
    public var d:Number;
    public var f:Number;
    public var s:Number;

    // calculated
    public var r:int;              // current vehicle win rate
    public var db:int;
    public var fb:int;
    public var sb:int;
    public var dv:int;
    public var te:int;
    public var teff:int;
}
