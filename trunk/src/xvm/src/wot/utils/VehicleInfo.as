/**
 * ...
 * @author sirmax2
 */
import wot.utils.Utils;

class wot.utils.VehicleInfo
{
  private static var LT = 1;
  private static var MT = 2;
  private static var HT = 3;
  private static var TD = 4;
  private static var SP = 5;

  private static var _instance = null;
  private static var _data = null;

  private static function get instance()
  {
    if (_instance == null)
      _instance = new VehicleInfo();
    return _instance;
  }

  // icon = ../maps/icons/vehicle/contour/usa-M24_Chaffee.tga
  public static function getInfo(str: String): Object
  {
    // str is icon path?
    if (Utils.endsWith(".tga", str))
    {
      var a = str.split("\\");
      str = a[a.length - 1];
      str = str.slice(str.indexOf("-") + 1, str.lastIndexOf(".") - 1);
      str = str.split("-").join("_");
      str = Utils.trim(str);
    }

    return _data[str] || null;
  }

  // PRIVATE

  private function VehicleInfo()
  {
    _data = {
      Ch01_Type59:		{ level: 8,  type: MT, tier1: 9,  tier2: 11 },
      Ch02_Type62:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      Ch03_WZ_111:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      _105_leFH18B2:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      AMX_12t:			{ level: 5,  type: LT, tier1: 7,  tier2: 10 },
      AMX_13_75:		{ level: 6,  type: LT, tier1: 8,  tier2: 12 },
      AMX_13_90:		{ level: 7,  type: LT, tier1: 10, tier2: 13 },
      AMX_50_100:		{ level: 8,  type: HT, tier1: 9,  tier2: 12 },
      AMX_50_120:		{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      AMX_M4_1945:		{ level: 7,  type: HT, tier1: 8,  tier2: 12 },
      AMX38:			{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      AMX40:			{ level: 4,  type: LT, tier1: 4,  tier2: 8 },
      ARL_44:			{ level: 6,  type: HT, tier1: 7,  tier2: 11 },
      B1:			{ level: 4,  type: HT, tier1: 4,  tier2: 6 },
      Bat_Chatillon25t:		{ level: 9,  type: MT, tier1: 11, tier2: 13 },
      BDR_G1B:			{ level: 5,  type: HT, tier1: 6,  tier2: 10 },
      D1:			{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      D2:			{ level: 3,  type: MT, tier1: 3,  tier2: 6 },
      F10_AMX_50B:		{ level: 10, type: HT, tier1: 11, tier2: 13 },
      FCM_36Pak40:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      Hotchkiss_H35:		{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      Lorraine40t:		{ level: 8,  type: MT, tier1: 9,  tier2: 11 },
      RenaultFT:		{ level: 1,  type: LT, tier1: 1,  tier2: 2 },
      B_1bis_captured:		{ level: 4,  type: HT, tier1: 4,  tier2: 5 },
      Bison_I:			{ level: 2,  type: SP, tier1: 3,  tier2: 7 },
      E_100:			{ level: 10, type: HT, tier1: 11, tier2: 13 },
      E_50:			{ level: 9,  type: MT, tier1: 11, tier2: 13 },
      E_75:			{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      Ferdinand:		{ level: 8,  type: TD, tier1: 9,  tier2: 12 },
      G_E:			{ level: 8,  type: SP, tier1: 12, tier2: 13 },
      G_Panther:		{ level: 6,  type: SP, tier1: 10, tier2: 11 },
      G_Tiger:			{ level: 7,  type: SP, tier1: 11, tier2: 12 },
      G20_Marder_II:		{ level: 3,  type: TD, tier1: 4,  tier2: 6 },
      Grille:			{ level: 4,  type: SP, tier1: 6,  tier2: 9 },
      H39_captured:		{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      Hetzer:			{ level: 4,  type: TD, tier1: 5,  tier2: 8 },
      Hummel:			{ level: 5,  type: SP, tier1: 8,  tier2: 10 },
      JagdPanther:		{ level: 7,  type: TD, tier1: 8,  tier2: 11 },
      JagdPzIV:			{ level: 6,  type: TD, tier1: 7,  tier2: 10 },
      JagdTiger:		{ level: 9,  type: TD, tier1: 10, tier2: 13 },
      Lowe:			{ level: 8,  type: HT, tier1: 9,  tier2: 11 },
      Ltraktor:			{ level: 1,  type: LT, tier1: 1,  tier2: 2 },
      Maus:			{ level: 10, type: HT, tier1: 11, tier2: 13 },
      Panther_II:		{ level: 8,  type: MT, tier1: 9,  tier2: 11 },
      PanzerJager_I:		{ level: 2,  type: TD, tier1: 3,  tier2: 5 },
      Pz35t:			{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      Pz38_NA:			{ level: 4,  type: LT, tier1: 4,  tier2: 10 },
      Pz38t:			{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      PzII:			{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      PzII_J:			{ level: 3,  type: LT, tier1: 3,  tier2: 5 },
      PzII_Luchs:		{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      PzIII:			{ level: 4,  type: MT, tier1: 4,  tier2: 8 },
      PzIII_A:			{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      PzIII_IV:			{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      PzIV:			{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      PzIV_Hydro:		{ level: 5,  type: MT, tier1: 6,  tier2: 8 },
      PzV:			{ level: 7,  type: MT, tier1: 8,  tier2: 11 },
      PzV_PzIV:			{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      PzV_PzIV_ausf_Alfa:	{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      PzVI:			{ level: 7,  type: HT, tier1: 8,  tier2: 12 },
      PzVI_Tiger_P:		{ level: 7,  type: HT, tier1: 8,  tier2: 12 },
      PzVIB_Tiger_II:		{ level: 8,  type: HT, tier1: 9,  tier2: 12 },
      S35_captured:		{ level: 3,  type: MT, tier1: 3,  tier2: 6 },
      StugIII:			{ level: 5,  type: TD, tier1: 6,  tier2: 9 },
      Sturmpanzer_II:		{ level: 3,  type: SP, tier1: 4,  tier2: 8 },
      T_15:			{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      T_25:			{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      VK1602:			{ level: 4,  type: LT, tier1: 6,  tier2: 10 },
      VK2801:			{ level: 5,  type: LT, tier1: 8,  tier2: 13 },
      VK3001H:			{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      VK3001P:			{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      VK3002DB:			{ level: 7,  type: MT, tier1: 8,  tier2: 11 },
      VK3601H:			{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      VK4502A:			{ level: 8,  type: HT, tier1: 9,  tier2: 12 },
      VK4502P:			{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      Wespe:			{ level: 3,  type: SP, tier1: 4,  tier2: 8 },
      M10_Wolverine:		{ level: 5,  type: TD, tier1: 6,  tier2: 9 },
      M103:			{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      M12:			{ level: 6,  type: SP, tier1: 10, tier2: 11 },
      M18_Hellcat:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      M2_lt:			{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      M2_med:			{ level: 3,  type: MT, tier1: 3,  tier2: 6 },
      M22_Locust:		{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      M24_Chaffee:		{ level: 5,  type: LT, tier1: 8,  tier2: 13 },
      M3_Grant:			{ level: 4,  type: MT, tier1: 4,  tier2: 8 },
      M3_Stuart:		{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      M36_Slagger:		{ level: 6,  type: TD, tier1: 7,  tier2: 10 },
      M37:			{ level: 3,  type: SP, tier1: 4,  tier2: 8 },
      M4_Sherman:		{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      M40M43:			{ level: 7,  type: SP, tier1: 11, tier2: 12 },
      M41:			{ level: 5,  type: SP, tier1: 8,  tier2: 10 },
      M46_Patton:		{ level: 9,  type: MT, tier1: 11, tier2: 13 },
      M4A2E4:			{ level: 5,  type: MT, tier1: 6,  tier2: 8 },
      M4A3E8_Sherman:		{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      M5_Stuart:		{ level: 4,  type: LT, tier1: 4,  tier2: 10 },
      M6:			{ level: 6,  type: HT, tier1: 7,  tier2: 11 },
      M6A2E1:			{ level: 8,  type: HT, tier1: 9,  tier2: 11 },
      M7_med:			{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      M7_Priest:		{ level: 4,  type: SP, tier1: 6,  tier2: 9 },
      M8A1:			{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      MTLS_1G14:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      Pershing:			{ level: 8,  type: MT, tier1: 9,  tier2: 11 },
      Ram_II:			{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      Sherman_Jumbo:		{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      T1_Cunningham:		{ level: 1,  type: LT, tier1: 1,  tier2: 2 },
      T1_hvy:			{ level: 5,  type: HT, tier1: 6,  tier2: 9 },
      T110:			{ level: 10, type: HT, tier1: 11, tier2: 13 },
      T14:			{ level: 5,  type: HT, tier1: 6,  tier2: 8 },
      T18:			{ level: 2,  type: TD, tier1: 3,  tier2: 5 },
      T2_lt:			{ level: 2,  type: LT, tier1: 2,  tier2: 5 },
      T2_med:			{ level: 2,  type: MT, tier1: 2,  tier2: 3 },
      T20:			{ level: 7,  type: MT, tier1: 8,  tier2: 11 },
      T23:			{ level: 8,  type: MT, tier1: 9,  tier2: 11 },
      T25_2:			{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      T25_AT:			{ level: 7,  type: TD, tier1: 8,  tier2: 11 },
      T28:			{ level: 8,  type: TD, tier1: 9,  tier2: 12 },
      T28_Prototype:		{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      T29:			{ level: 7,  type: HT, tier1: 8,  tier2: 12 },
      T30:			{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      T32:			{ level: 8,  type: HT, tier1: 9,  tier2: 12 },
      T34_hvy:			{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      T40:			{ level: 4,  type: TD, tier1: 5,  tier2: 8 },
      T49:			{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      T57:			{ level: 2,  type: SP, tier1: 3,  tier2: 5 },
      T82:			{ level: 3,  type: TD, tier1: 4,  tier2: 6 },
      T92:			{ level: 8,  type: SP, tier1: 12, tier2: 13 },
      T95:			{ level: 9,  type: TD, tier1: 10, tier2: 13 },
      A_20:			{ level: 4,  type: LT, tier1: 4,  tier2: 10 },
      A_32:			{ level: 4,  type: MT, tier1: 4,  tier2: 8 },
      A44:			{ level: 0,  type: HT, tier1: 0,  tier2: 0 },
      AT_1:			{ level: 2,  type: TD, tier1: 3,  tier2: 5 },
      BT_2:			{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      BT_7:			{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      BT_SV:			{ level: 3,  type: LT, tier1: 3,  tier2: 5 },
      Churchill_LL:		{ level: 5,  type: HT, tier1: 6,  tier2: 8 },
      GAZ_74b:			{ level: 4,  type: TD, tier1: 5,  tier2: 8 },
      IS:			{ level: 7,  type: HT, tier1: 8,  tier2: 12 },
      IS_3:			{ level: 8,  type: HT, tier1: 9,  tier2: 12 },
      IS_4:			{ level: 9,  type: HT, tier1: 10, tier2: 13 },
      IS_7:			{ level: 10, type: HT, tier1: 11, tier2: 13 },
      ISU_152:			{ level: 8,  type: TD, tier1: 9,  tier2: 12 },
      KV:			{ level: 5,  type: HT, tier1: 6,  tier2: 10 },
      KV_13:			{ level: 7,  type: MT, tier1: 8,  tier2: 11 },
      KV_1s:			{ level: 6,  type: HT, tier1: 7,  tier2: 11 },
      KV_220:			{ level: 5,  type: HT, tier1: 6,  tier2: 8 },
      KV_220_action:		{ level: 5,  type: HT, tier1: 6,  tier2: 8 },
      KV_3:			{ level: 6,  type: HT, tier1: 7,  tier2: 11 },
      KV_5:			{ level: 8,  type: HT, tier1: 9,  tier2: 10 },
      M3_Stuart_LL:		{ level: 3,  type: LT, tier1: 3,  tier2: 5 },
      Matilda_II_LL:		{ level: 5,  type: MT, tier1: 6,  tier2: 8 },
      MS_1:			{ level: 1,  type: LT, tier1: 1,  tier2: 2 },
      Object_212:		{ level: 7,  type: SP, tier1: 11, tier2: 12 },
      Object_261:		{ level: 8,  type: SP, tier1: 12, tier2: 13 },
      Object_704:		{ level: 9,  type: TD, tier1: 10, tier2: 13 },
      S_51:			{ level: 6,  type: SP, tier1: 10, tier2: 11 },
      SU_100:			{ level: 6,  type: TD, tier1: 7,  tier2: 10 },
      SU_14:			{ level: 6,  type: SP, tier1: 10, tier2: 11 },
      SU_152:			{ level: 7,  type: TD, tier1: 8,  tier2: 11 },
      SU_18:			{ level: 2,  type: SP, tier1: 3,  tier2: 5 },
      SU_26:			{ level: 3,  type: SP, tier1: 4,  tier2: 8 },
      SU_5:			{ level: 4,  type: SP, tier1: 6,  tier2: 9 },
      SU_76:			{ level: 3,  type: TD, tier1: 4,  tier2: 6 },
      SU_8:			{ level: 5,  type: SP, tier1: 8,  tier2: 10 },
      SU_85:			{ level: 5,  type: TD, tier1: 6,  tier2: 9 },
      SU_85I:			{ level: 5,  type: TD, tier1: 6,  tier2: 8 },
      T_127:			{ level: 3,  type: LT, tier1: 3,  tier2: 5 },
      T_26:			{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      T_28:			{ level: 4,  type: MT, tier1: 4,  tier2: 8 },
      T_34:			{ level: 5,  type: MT, tier1: 6,  tier2: 9 },
      T_34_85:			{ level: 6,  type: MT, tier1: 7,  tier2: 10 },
      T_43:			{ level: 7,  type: MT, tier1: 8,  tier2: 11 },
      T_44:			{ level: 8,  type: MT, tier1: 9,  tier2: 11 },
      T_46:			{ level: 3,  type: LT, tier1: 3,  tier2: 6 },
      T_50:			{ level: 4,  type: LT, tier1: 6,  tier2: 10 },
      T_54:			{ level: 9,  type: MT, tier1: 11, tier2: 13 },
      T_50_2:			{ level: 5,  type: LT, tier1: 8,  tier2: 13 },
      Tetrarch_LL:		{ level: 2,  type: LT, tier1: 2,  tier2: 3 },
      Valentine_LL:		{ level: 4,  type: LT, tier1: 4,  tier2: 5 }
    };
  }
}
