package net.wg.gui.lobby.tankman 
{
    public class PersonalCaseRetrainingModel extends Object
    {
        public function PersonalCaseRetrainingModel()
        {
            this.lightTanks = [];
            this.mediumTanks = [];
            this.heavyTanks = [];
            this.AT_SPG = [];
            this.SPG = [];
            super();
            return;
        }

        public var credits:Number;

        public var gold:Number;

        public var tankmanCost:Array;

        public var vehicles:Array;

        public var lightTanks:Array;

        public var mediumTanks:Array;

        public var heavyTanks:Array;

        public var AT_SPG:Array;

        public var SPG:Array;

        public var testData:net.wg.gui.lobby.tankman.PersonalCaseModel=null;

        public var testStats:Object=null;

        public var currentVehicle:net.wg.gui.lobby.tankman.PersonalCaseCurrentVehicle=null;

        public var nativeVehicle:Object=null;

        public var tankmanID:int;

        public var nationID:int;

        public var specializationLevel:Number;
    }
}
