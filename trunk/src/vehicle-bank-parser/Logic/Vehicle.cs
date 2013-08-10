﻿using System.Collections.Generic;
using System.Xml;
using System;

class Vehicle
{
   /**
    * Can not define rootNode modules vulnerability status.
    * This type of vehicles are not a subject of interest.
    */
    public const short ONLY_ONE_TURRET = 0;

   /**
    * Top turret does not unlock new gun.
    * Player with stock turret can mount top gun.
    * Low vulnerability.
    */
    public const short STOCK_TURRET_TOP_GUN_POSSIBLE = 1;

   /**
    * Top turret secondChassis new gun.
    * Player with stock turret can not mount top gun.
    * High vulnerability.
    */
    public const short STOCK_TURRET_NO_TOP_GUN = 2;

    public int vid;
    public int tankId;
    public string name;
    public string nation;
    public int level;
    public string type;
    public bool premium;
    public int hpstock;
    public int hptop;
    public short status;
    public string shortUserString;

    /*
     * Tanks are subset of Vehicles.
     * Tanks has turrets rotation and are subject of interest.
     */

    public Vehicle(XmlNode vdata)
    {
        VehicleXmlParser parser = new VehicleXmlParser(vdata);
        hpstock = parser.getHpStock();
        hptop = parser.getHpTop();
        status = defineStatus(parser);
    }

    private short defineStatus(VehicleXmlParser parser)
    {
        if (parser.hasOnlyOneTurret())
            return ONLY_ONE_TURRET;

        /**
         * Some britain SPGs has absolutely two equal turrets but one of them is not used by WG interface.
         * WG screwed up again.
         * Ignore this turret.
         * 
         * As for 10 aug 2013 the screwed SPGs are:
         * gb27_sexton, amx_ob_am105, gb77_fv304, su14_1, gb29_crusader_5inch
         */
        if (parser.turretsHasEqualHP())
            return ONLY_ONE_TURRET;

        if (parser.turretUnlocksSomething())
        {
            XmlNodeList unlocks = parser.getSecondTurretUnlocks();
            List<XmlNode> guns = parser.separateGuns(unlocks);
            int maxUnlockedGunCost = parser.mostExpensive(guns);
            int chassisCost = parser.getChassisCost();
            return unlockedGunIsTotalCrap(maxUnlockedGunCost, chassisCost);
        }

        return STOCK_TURRET_TOP_GUN_POSSIBLE;
    }

    private short unlockedGunIsTotalCrap(int maxUnlockedGunCost, int chassisCost)
    {
        // Looks like only Patton and Pershing are affected by this. Could be done manually.
        // Now have to switch T-50-2 manually to status-2
        if (chassisCost > maxUnlockedGunCost * 4)
            /*
             * *3 <- low level tanks have top guns cost much less than chassis
             * if Gun unlocked by second turret is crap -> top gun is possible to mount at stock turret
             */
            return STOCK_TURRET_TOP_GUN_POSSIBLE;

        return STOCK_TURRET_NO_TOP_GUN;
    }

    public string ToAS2tring()
    {
      return (String.Format("{0} {{ {1}{2}{3}{4}{5}{6}{7}{8}{9}{10} }}",
        (name.Replace("-", "_").ToLower() + ":").PadRight(27),
        String.Format("id: {0},", tankId).PadRight(9),
        String.Format("level: {0},", level).PadRight(11),
        String.Format("type: \"{0}\", ", type).PadRight(13),
        String.Format("hpstock: {0}, ", hpstock).PadRight(15),
        String.Format("hptop: {0}, ", hptop).PadRight(13),
        String.Format("turret: {0}, ", status),
        String.Format("premium: {0}, ", (premium ? "1" : "0")),
        String.Format("nation: \"{0}\", ", nation).PadRight(19),
        String.Format("name: \"{0}\", ", name).PadRight(37),
        String.Format("translationKey: \"{0}\"", shortUserString)
        ));
    }

    public string ToJsonString()
    {
      return (String.Format("{0} {{ {1}{2}{3}{4}{5}{6}{7}{8}{9} }}",
        String.Format("\"{0}\":", name.Replace("-", "_").ToLower()).PadRight(29),
        String.Format("\"id\": {0},", tankId).PadRight(11),
        String.Format("\"level\": {0},", level).PadRight(13),
        String.Format("\"type\": \"{0}\", ", type).PadRight(15),
        String.Format("\"hpstock\": {0}, ", hpstock).PadRight(17),
        String.Format("\"hptop\": {0}, ", hptop).PadRight(15),
        String.Format("\"turret\": {0}, ", status),
        String.Format("\"premium\": {0}, ", premium ? "1" : "0"),
        String.Format("\"nation\": \"{0}\", ", nation).PadRight(21),
        String.Format("\"name\": \"{0}\"", name)));
    }
}
