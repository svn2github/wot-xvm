/**
 * XVM Config - "statisticForm" section
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.types.cfg
{
    public class CStatisticForm extends Object
    {
        public var showChances:Boolean;     // Show game round win chances percentage.
        public var showChancesExp:Boolean;  // Show experimental "chance to win" formula.
        public var removeSquadIcon:Boolean; // Hide squad icon.
        public var clanIcon:CClanIcon;      // Playes/clan icon parameters.
        // Dispay formats.
        public var formatLeftNick:String;
        public var formatLeftVehicle:String;
        public var formatRightNick:String;
        public var formatRightVehicle:String;
    }
}
