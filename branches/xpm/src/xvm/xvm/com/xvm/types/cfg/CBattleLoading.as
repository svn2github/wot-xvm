/**
 * XVM Config - "battleLoading" section
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.types.cfg
{
    public dynamic class CBattleLoading extends Object
    {
        // Show clock at Battle Loading Screen.
        // ### Is there a clock:on\off switch variable supposed to be? ###
        // A: No, it is possible to set clockFormat: "" to disable clock.

        public var clockFormat:String;      // Format: http://php.net/date

        public var showChances:Boolean;     // Show game round win chances percentage.
        public var showChancesExp:Boolean;  // Show experimental "chance to win" formula.
        public var removeSquadIcon:Boolean; // Hide squad icon.

        // Playes/clan icon parameters.
        public var clanIcon:CClanIcon;

        // Dispay format. Macro-substitutiones allowed.
        public var formatLeft:String;
        public var formatRight:String;
    }
}
