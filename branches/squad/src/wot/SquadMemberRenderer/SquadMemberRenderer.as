/**
 * ...
 * @author Mr.A
 */
import wot.utils.Config;
import wot.utils.Utils;
import wot.utils.Logger;
import wot.utils.VehicleInfoData;
import wot.utils.VehicleInfoData2;
import wot.utils.Locale;

class wot.SquadMemberRenderer.SquadMemberRenderer extends net.wargaming.messenger.controls.SquadMemberRenderer
{
	private var tankName:String;
	private var tankNameWONation:String;
	private var tankLvl:String;
	private var tankBattleLevels:String;
	private var tankType:String;
	private var tankNation:String;
	private var supportSeparator:String;
	private var leftLvlBorder:String;
	//private var rightLvlBorder:String;
	private var romanNumb:Boolean;
	private var showClan:Boolean;
	private var enabledInfo:Boolean;
	
	private static var dummy = Logger.dummy;
	
	function SquadMemberRenderer()
	{
		Utils.TraceXvmModule("Squad");
		
		super();
		
		_global.gfxExtensions = true;
		
		//Logger.add("SquadMemberRenderer");
		Config.LoadConfig("SquadMemberRenderer.as");
		enabledInfo = Config.s_config.squad.enabled;
		romanNumb = Config.s_config.squad.romanNumb;
		showClan = Config.s_config.squad.showClan;
		leftLvlBorder = Config.s_config.squad.leftLvlBorder;
		//Logger.add("enabled=" + enabledInfo+", roman="+romanNumb+", clan="+showClan+", leftLvlBorder=\""+leftLvlBorder+"\".");
		//Logger.add("SquadMemberRenderer- end");
	}
	
	/*function onEnterFrame()
	{
		if (!Config.s_loaded){
		this.nextFrame();
		if (_currentframe == _totalframes)
		{
			this.stop();
			delete this.onEnterFrame;
		}} // end if
	} // End of the function*/
	
	function defineTankInfo(vehName:String):String
	{
		//Logger.add("defineTankInfo");
		enabledInfo = Config.s_config.squad.enabled;
		romanNumb = Config.s_config.squad.romanNumb;
		showClan = Config.s_config.squad.showClan;
		leftLvlBorder = Config.s_config.squad.leftLvlBorder;
		//Logger.add("enabled=" + enabledInfo + ", roman=" + romanNumb + ", clan=" + showClan + ", leftLvlBorder=\"" + leftLvlBorder + "\".");
		if (!Config.s_loaded || Config.s_config.squad.enabled != true)
            return "";
		if (data.displayName != "" && !showClan)
			data.displayName = Utils.GetPlayerName(data.displayName);

		switch (vehName) {
			//level 1
			case "МС-1": 
				tankName = "ussr_MS_1";  break; 
			case "LTraktor": 
				tankName = "germany_Ltraktor";  break; 
			case "T1": 
				tankName = "usa_T1_Cunningham";  break; 
			case "FT-17": 
				tankName = "france_RenaultFT";  break; 
			case "Medium I": 
				tankName = "uk_GB01_Medium_Mark_I";  break; 
			case "NC-31": 
				tankName = "china_Ch06_Renault_NC31";  break;
			//level 2
			case "АТ-1": 
				tankName = "ussr_AT_1";  break; 
			case "БТ-2": 
				tankName = "ussr_BT_2";  break; 
			case "Т-26": 
				tankName = "ussr_T_26";  break; 
			case "СУ-18": 
				tankName = "ussr_SU_18";  break; 
			case "Тетрарх": 
				tankName = "ussr_Tetrarch_LL";  break;
			
			case "Bison": 
				tankName = "germany_Bison_I";  break;
			case "PzJg I": 
				tankName = "germany_PanzerJager_I";  break;
			case "Pz35t": 
				tankName = "germany_Pz35t";  break;
			case "PzII": 
				tankName = "germany_PzII";  break;
			case "Pz. I": 
				tankName = "germany_PzI";  break;
			case "PzKpfw 38H735 (f)": 
				tankName = "germany_H39_captured";  break;
			
			case "M2 Light": 
				tankName = "usa_M2_lt";  break;
			case "T18": 
				tankName = "usa_T18";  break;
			case "T2 Light": 
				tankName = "usa_T2_lt";  break;
			case "T2 Medium": 
				tankName = "usa_T2_med";  break;
			case "T57": 
				tankName = "usa_T57";  break;
			case "T1E6": 
				tankName = "usa_T1_E6";  break;
			
			case "Ren.FT AC": 
				tankName = "france_RenaultFT_AC";  break;
			case "D1": 
				tankName = "france_D1";  break;
			case "H35": 
				tankName = "france_Hotchkiss_H35";  break;
			case "BS": 
				tankName = "france_RenaultBS";  break;
			
			case "Cruiser III": 
				tankName = "uk_GB58_Cruiser_Mk_III";  break;
			case "UC 2-pdr": 
				tankName = "uk_GB39_Universal_CarrierQF2";  break;
			case "Cruiser I": 
				tankName = "uk_GB03_Cruiser_Mk_I";  break;
			case "Medium II": 
				tankName = "uk_GB05_Vickers_Medium_Mk_II";  break;
			
			case "VAE Type B": 
				tankName = "china_Ch07_Vickers_MkE_Type_BT26";  break;
			//level 3
			case "СУ-76": 
				tankName = "ussr_SU_76";  break;
			case "БТ-7": 
				tankName = "ussr_BT_7";  break;
			case "Т-127": 
				tankName = "ussr_T_127";  break;
			case "Т-46": 
				tankName = "ussr_T_46";  break;
			case "СУ-26": 
				tankName = "ussr_SU_26";  break;
			case "БТ-СВ": 
				tankName = "ussr_BT_SV";  break;
			case "M3 лёгкий": 
				tankName = "ussr_M3_Stuart_LL";  break;
			
			case "StPz II": 
				tankName = "germany_Sturmpanzer_II";  break;
			case "Wespe": 
				tankName = "germany_Wespe";  break;
			case "Marder II": 
				tankName = "germany_G20_Marder_II";  break;
			case "Pz S35": 
				tankName = "";  break;//todo
			case "Pz38t": 
				tankName = "germany_Pz38t";  break;
			case "T-15": 
				tankName = "germany_T_15";  break;
			case "PzIII A": 
				tankName = "germany_PzIII_A";  break;
			case "Pz. II G": 
				tankName = "germany_Pz_II_AusfG";  break;
			case "Pz. I C": 
				tankName = "germany_PzI_ausf_C";  break;
			case "PzKpfw II Ausf. J": 
				tankName = "germany_PzII_J";  break;
			case "PzKpfw S35 739 (f)": 
				tankName = "germany_S35_captured";  break;
			
			case "M3 Stuart": 
				tankName = "usa_M3_Stuart";  break;
			case "T82": 
				tankName = "usa_T82";  break;
			case "Locust": 
				tankName = "usa_M22_Locust";  break;
			case "M2 Medium": 
				tankName = "usa_M2_med";  break;
			case "M37": 
				tankName = "usa_M37";  break;
			case "MTLS-1G14": 
				tankName = "usa_MTLS_1G14";  break;
			case "Sexton I": 
				tankName = "usa_Sexton_I";  break;
			
			case "Ren.UE57": 
				tankName = "france_RenaultUE57";  break;
			case "FCM36P40": 
				tankName = "france_FCM_36Pak40";  break;
			case "D2": 
				tankName = "france_D2";  break;
			case "AMX 38": 
				tankName = "france_AMX38";  break;
			case "Lorr.39LAM": 
				tankName = "france_Lorraine39_L_AM";  break;
			
			case "Cruiser IV": 
				tankName = "uk_GB59_Cruiser_Mk_IV";  break;
			case "Valentine AT": 
				tankName = "uk_GB42_Valentine_AT";  break;
			case "Cruiser II": 
				tankName = "uk_GB69_Cruiser_Mk_II";  break;
			case "Medium III": 
				tankName = "uk_GB06_Vickers_Medium_Mk_III";  break;
			
			case "Chi-Ha": 
				tankName = "china_Ch08_Type97_Chi_Ha";  break;
			//level 4
			case "СУ-85Б": 
				tankName = "ussr_GAZ_74b";  break;
			case "А-20": 
				tankName = "ussr_A_20";  break;
			case "Валентайн II": 
				tankName = "ussr_Valentine_LL";  break;
			case "Т-50": 
				tankName = "ussr_T_50";  break;
			case "Т-28": 
				tankName = "ussr_T_28";  break;
			case "СУ-5": 
				tankName = "ussr_SU_5";  break;
			case "А-32": 
				tankName = "ussr_A_32";  break;
			
			case "Grille": 
				tankName = "germany_Grille";  break;
			case "Hetzer": 
				tankName = "germany_Hetzer";  break;
			case "Pz38nA": 
				tankName = "germany_Pz38_NA";  break;
			case "PzIII": 
				tankName = "germany_PzIII";  break;
			case "Luchs": 
				tankName = "germany_PzII_Luchs";  break;
			case "PzKpfw B2 740 (f)": 
				tankName = "germany_B_1bis_captured";  break;
			
			case "M5 Stuart": 
				tankName = "usa_M5_Stuart";  break;
			case "M8A1": 
				tankName = "usa_M8A1";  break;
			case "T40": 
				tankName = "usa_T40";  break;
			case "M3 Lee": 
				tankName = "usa_M3_Grant";  break;
			case "M7 Priest": 
				tankName = "usa_M7_Priest";  break;
			
			case "SAu-40": 
				tankName = "france_Somua_Sau_40";  break;
			case "B1": 
				tankName = "france_B1";  break;
			case "AMX 40": 
				tankName = "france_AMX40";  break;
			case "leFH18B2": 
				tankName = "france__105_leFH18B2";  break;
			case "AMX105AM": 
				tankName = "france_AMX_105AM";  break;
			
			case "Covenanter": 
				tankName = "uk_GB60_Covenanter";  break;
			case "Alecto": 
				tankName = "uk_GB57_Alecto";  break;
			case "Valentine": 
				tankName = "uk_GB04_Valentine";  break;
			case "Matilda": 
				tankName = "uk_GB07_Matilda";  break;
			
			case "M5A1 Stuart": 
				tankName = "china_Ch09_M5";  break;
			//level 5
			case "СУ-85": 
				tankName = "ussr_SU_85";  break;
			case "Т-34": 
				tankName = "ussr_T_34";  break;
			case "Матильда IV": 
				tankName = "ussr_Matilda_II_LL";  break;
			case "Т-50-2": 
				tankName = "ussr_T_50_2";  break;
			case "КВ-1": 
				tankName = "ussr_KV1";  break;
			case "Черчилль III": 
				tankName = "ussr_Churchill_LL";  break;
			case "СУ-8": 
				tankName = "ussr_SU_8";  break;
			case "КВ-220": 
				tankName = "ussr_KV_220";  break;
			case "КВ-220 Т": 
				tankName = "ussr_KV_220_action";  break;
			case "СУ-85И": 
				tankName = "ussr_SU_85I";  break;
			
			case "Hummel": 
				tankName = "germany_Hummel";  break;
			case "StuGIII": 
				tankName = "germany_StuGIII";  break;
			case "T-25": 
				tankName = "germany_T_25";  break;
			case "PzIV": 
				tankName = "germany_PzIV";  break;
			case "PzIII/IV": 
				tankName = "germany_PzIII_IV";  break;
			case "Leopard": 
				tankName = "germany_VK1602";  break;
			
			case "Chaffee": 
				tankName = "usa_M24_Chaffee";  break;
			case "M7": 
				tankName = "usa_M7_med";  break; 
			case "T49": 
				tankName = "usa_T49";  break; 
			case "Wolverine": 
				tankName = "usa_M10_Wolverine";  break; 
			case "Ram II": 
				tankName = "usa_Ram_II";  break; 
			case "M4": 
				tankName = "usa_M4_Sherman";  break; 
			case "T1 Heavy": 
				tankName = "usa_T1_hvy";  break; 
			case "T14": 
				tankName = "usa_T14";  break; 
			case "M4A2E4": 
				tankName = "usa_M4A2E4";  break; 
			case "M41": 
				tankName = "usa_M41";  break;
			
			case "S-35CA": 
				tankName = "france_S_35CA";  break; 
			case "BDR G1B": 
				tankName = "france_BDR_G1B";  break; 
			case "ELC AMX": 
				tankName = "france_ELC_AMX";  break; 
			case "AMX 13F3": 
				tankName = "france_AMX_13F3AM";  break;
			
			case "Crusader": 
				tankName = "uk_GB20_Crusader";  break; 
			case "AT 2": 
				tankName = "uk_GB73_AT2";  break; 
			case "Churchill I": 
				tankName = "uk_GB08_Churchill_I";  break; 
			case "Matilda BP": 
				tankName = "uk_GB68_Matilda_Black_Prince";  break;
			
			case "Type T-34": 
				tankName = "china_Ch21_T34";  break;
			//level 6
			case "СУ-100Y": 
				tankName = "ussr_SU100Y";  break; 
			case "СУ-100": 
				tankName = "ussr_SU_100";  break; 
			case "Т-34-85": 
				tankName = "ussr_T_34_85";  break; 
			case "КВ-1С": 
				tankName = "ussr_KV_1s";  break; 
			case "Т-150": 
				tankName = "ussr_T150";  break; 
			case "КВ-2": 
				tankName = "ussr_KV2";  break; 
			case "С-51": 
				tankName = "ussr_S_51";  break; 
			case "СУ-14": 
				tankName = "ussr_SU_14";  break;
			
			case "GwPanther": 
				tankName = "germany_G_Panther";  break; 
			case "D. Max": 
				tankName = "germany_DickerMax";  break; 
			case "JagdPzIV": 
				tankName = "germany_JagdPzIV";  break; 
			case "VK3001P": 
				tankName = "germany_VK3001P";  break; 
			case "VK3601H": 
				tankName = "germany_VK3601H";  break; 
			case "VK3001H": 
				tankName = "germany_VK3001H";  break; 
			case "PzIV S.": 
				tankName = "germany_PzIV_schmalturm";  break; 
			case "VK2801": 
				tankName = "germany_VK2801";  break; 
			case "PzKpfw V-IV": 
				tankName = "germany_PzV_PzIV";  break;
			
			case "T21": 
				tankName = "usa_T21";  break; 
			case "Hellcat": 
				tankName = "usa_M18_Hellcat";  break; 
			case "Jackson": 
				tankName = "usa_M36_Slagger";  break; 
			case "M4A3E8": 
				tankName = "usa_M4A3E8_Sherman";  break; 
			case "M4A3E2": 
				tankName = "usa_Sherman_Jumbo";  break; 
			case "M6": 
				tankName = "usa_M6";  break; 
			case "M12": 
				tankName = "usa_M12";  break;
			
			case "ARL V39": 
				tankName = "france_ARL_V39";  break; 
			case "ARL 44": 
				tankName = "france_ARL_44";  break; 
			case "AMX12t": 
				tankName = "france_AMX_12t";  break; 
			case "Lor.155 50": 
				tankName = "france_Lorraine155_50";  break;
			
			case "Cromwell": 
				tankName = "uk_GB21_Cromwell";  break; 
			case "AT 8": 
				tankName = "uk_GB74_AT8";  break; 
			case "Churchill GC": 
				tankName = "uk_GB40_Gun_Carrier_Churchill";  break; 
			case "Churchill VII": 
				tankName = "uk_GB09_Churchill_VII";  break; 
			case "TOG II*": 
				tankName = "uk_GB63_TOG_II";  break;
			
			case "59-16":
				tankName = "china_Ch15_59_16";  break; 
			case "Type 58":
				tankName = "china_Ch20_Type58";  break;
			//level 7
			case "СУ-152":
				tankName = "ussr_SU_152";  break; 
			case "СУ-100М1":
				tankName = "ussr_SU100M1";  break; 
			case "СУ-122-44":
				tankName = "ussr_SU122_44";  break; 
			case "Т-43":
				tankName = "ussr_T_43";  break; 
			case "КВ-13":
				tankName = "ussr_KV_13";  break; 
			case "ИС":
				tankName = "ussr_IS";  break; 
			case "КВ-3":
				tankName = "ussr_KV_3";  break; 
			case "Об. 212":
				tankName = "ussr_Object_212";  break;
			
			case "GwTiger":
				tankName = "germany_G_Tiger";  break; 
			case "JgPanther":
				tankName = "germany_JagdPanther";  break; 
			case "Tiger P":
				tankName = "germany_PzVI_Tiger_P";  break; 
			case "Tiger":
				tankName = "germany_PzVI";  break; 
			case "VK3002DB":
				tankName = "germany_VK3002DB";  break; 
			case "Panther":
				tankName = "germany_PzV";  break; 
			case "PzV/M10":
				tankName = "germany_Panther_M10";  break;
			
			case "T71":
				tankName = "usa_T71";  break; 
			case "T25/2":
				tankName = "usa_T25_2";  break; 
			case "T25 AT":
				tankName = "usa_T25_AT";  break; 
			case "T20":
				tankName = "usa_T20";  break; 
			case "T29":
				tankName = "usa_T29";  break; 
			case "M40/M43":
				tankName = "usa_M40M43";  break; 
			
			case "AC Mle.46":
				tankName = "france_AMX_AC_Mle1946";  break; 
			case "AMX M4 45":
				tankName = "france_AMX_M4_1945";  break; 
			case "AMX 13 75":
				tankName = "france_AMX_13_75";  break; 
			case "Lor.155 51":
				tankName = "france_Lorraine155_51";  break;
			
			case "Comet":
				tankName = "uk_GB22_Comet";  break; 
			case "AT 7":
				tankName = "uk_GB75_AT7";  break; 
			case "AT 15A":
				tankName = "uk_GB71_AT_15A";  break; 
			case "Black Prince":
				tankName = "uk_GB10_Black_Prince";  break;
			
			case "WZ-131":
				tankName = "china_Ch16_WZ_131";  break; 
			case "T-34-1":
				tankName = "china_Ch04_T34_1";  break; 
			case "IS-2":
				tankName = "china_Ch10_IS2";  break; 
			case "Type 62":
				tankName = "china_Ch02_Type62";  break;
			//level 8
			case "ИСУ-152":
				tankName = "ussr_ISU_152";  break; 
			case "СУ-101":
				tankName = "ussr_SU_101";  break; 
			case "Т-44":
				tankName = "ussr_T_44";  break; 
			case "ИС-6":
				tankName = "ussr_Object252";  break; 
			case "ИС-3":
				tankName = "ussr_IS_3";  break; 
			case "КВ-4":
				tankName = "ussr_KV4";  break; 
			case "КВ-5":
				tankName = "ussr_KV_5";  break; 
			case "Об. 261":
				tankName = "ussr_Object_261";  break;
			
			case "GwTyp E":
				tankName = "germany_G_E";  break; 
			case "JgTig.8,8 cm":
				tankName = "germany_JagdTiger_SdKfz_185";  break; 
			case "JgPanthII":
				tankName = "germany_JagdPantherII";  break; 
			case "Ferdinand":
				tankName = "germany_Ferdinand";  break; 
			case "VK4502A":
				tankName = "germany_VK4502A";  break; 
			case "Tiger II":
				tankName = "germany_PzVIB_Tiger_II";  break; 
			case "Löwe":
				tankName = "germany_Lowe";  break; 
			case "Panther II":
				tankName = "germany_Panther_II";  break;
			
			case "T69":
				tankName = "usa_T69";  break; 
			case "T28 Prot.":
				tankName = "usa_T28_Prototype";  break; 
			case "T28":
				tankName = "usa_T28";  break; 
			case "Pershing":
				tankName = "usa_Pershing";  break; 
			case "T26E4":
				tankName = "usa_T26_E4_SuperPershing";  break; 
			case "T32":
				tankName = "usa_T32";  break; 
			case "T34":
				tankName = "usa_T34_hvy";  break; 
			case "T92":
				tankName = "usa_T92";  break; 
			case "M6A2E1":
				tankName = "usa_M6A2E1";  break;
			
			case "AC Mle.48":
				tankName = "france_AMX_AC_Mle1948";  break; 
			case "AMX50 100":
				tankName = "france_AMX_50_100";  break; 
			case "FCM 50 t":
				tankName = "france_FCM_50t";  break; 
			case "AMX 13 90":
				tankName = "france_AMX_13_90";  break; 
			case "B.Chat.155":
				tankName = "france_Bat_Chatillon155";  break; 
			
			case "Centurion I":
				tankName = "uk_GB23_Centurion";  break; 
			case "AT 15":
				tankName = "uk_GB72_AT15";  break; 
			case "Caernarvon":
				tankName = "uk_GB11_Caernarvon";  break;
			
			case "WZ-132":
				tankName = "china_Ch17_WZ131_1_WZ132";  break; //todo
			case "T-34-2":
				tankName = "china_Ch05_T34_2";  break; 
			case "110":
				tankName = "china_Ch11_110";  break; 
			case "Type 59":
				tankName = "china_Ch01_Type59";  break; 
			case "Type 59 G":
				tankName = "china_Ch01_Type59_gold";  break; 
			case "WZ-111":
				tankName = "china_Ch03_WZ_111";  break;
			//level 9
			case "Об. 704":
				tankName = "ussr_Object_704";  break; 
			case "СУ-122-54":
				tankName = "ussr_SU122_54";  break; 
			case "Т-54":
				tankName = "ussr_T_54";  break; 
			case "ИС-8":
				tankName = "ussr_IS8";  break; 
			case "СТ-I":
				tankName = "ussr_ST_I";  break;
			
			case "Jagdtiger":
				tankName = "germany_JagdTiger";  break; 
			case "VK4502P":
				tankName = "germany_VK4502P";  break; 
			case "E-75":
				tankName = "germany_E_75";  break; 
			case "E-50":
				tankName = "germany_E_50";  break;
			
			case "T54E1":
				tankName = "usa_T54E1";  break; 
			case "T30":
				tankName = "usa_T30";  break; 
			case "T95":
				tankName = "usa_T95";  break; 
			case "M46 Patton":
				tankName = "usa_M46_Patton";  break; 
			case "M103":
				tankName = "usa_M103";  break;
			
			case "AMX50Foch":
				tankName = "france_AMX50_Foch";  break; 
			case "AMX50 120":
				tankName = "france_AMX_50_120";  break; 
			case "Lorraine40t":
				tankName = "france_Lorraine40t";  break;
			
			case "Centurion 7/1":
				tankName = "uk_GB24_Centurion_Mk3";  break; 
			case "Tortoise":
				tankName = "uk_GB32_Tortoise";  break; 
			case "Conqueror":
				tankName = "uk_GB12_Conqueror";  break;
			
			case "WZ-120":
				tankName = "china_Ch18_WZ_120";  break; 
			case "WZ-111 1-4":
				tankName = "china_Ch12_111_1_2_3";  break;
			//level 10
			case "Об. 268":
				tankName = "ussr_Object268";  break; 
			case "Об. 263":
				tankName = "ussr_Object263";  break; 
			case "Т-62А":
				tankName = "ussr_T62A";  break; 
			case "ИС-7":
				tankName = "ussr_IS_7";  break; 
			case "ИС-4":
				tankName = "ussr_IS_4";  break;
			
			case "JgPzE100":
				tankName = "germany_JagdPz_E100";  break; 
			case "Maus":
				tankName = "germany_Maus";  break; 
			case "E-100":
				tankName = "germany_E_100";  break; 
			case "E-50M":
				tankName = "germany_E50_Ausf_M";  break;
			
			case "T57 Heavy":
				tankName = "usa_T57_58";  break; 
			case "T110E4":
				tankName = "usa_T110E4";  break; 
			case "T110E3":
				tankName = "usa_T110E3";  break; 
			case "M48 Patton":
				tankName = "usa_M48A1";  break; 
			case "T110E5":
				tankName = "usa_T110";  break;
			
			case "AMX50F155":
				tankName = "france_AMX_50Fosh_155";  break; 
			case "AMX50B":
				tankName = "france_F10_AMX_50B";  break; 
			case "BatChat.25t":
				tankName = "france_Bat_Chatillon25t";  break;
			
			case "FV4202":
				tankName = "uk_GB70_FV4202_105";  break; 
			case "FV215b 183":
				tankName = "uk_GB48_FV215b_183";  break; 
			case "FV215b":
				tankName = "uk_GB13_FV215b";  break;
			
			case "121":
				tankName = "china_Ch19_121";  break; 
			case "113":
				tankName = "china_Ch22_113";  break;
			
			default: return "";
		} // End of switch
		var pos = tankName.indexOf("_");
        tankNameWONation =  (pos < 0) ? tankName : Utils.trim(tankName.slice(pos+1,tankName.length)).toLowerCase();
		tankLvl = VehicleInfoData2.data[tankNameWONation].level.toString();
		tankBattleLevels = VehicleInfoData.data[tankName].tiers[0].toString() + "-" + VehicleInfoData.data[tankName].tiers[1].toString();
		if(romanNumb)
			switch (tankLvl)
			{
				case "1":
				{
					tankLvl = ("I");
					break;
				} 
				case "2":
				{
					tankLvl = ("II");
					break;
				} 
				case "3":
				{
					tankLvl = ("III");
					break;
				} 
				case "4":
				{
					tankLvl = ("IV");
					break;
				} 
				case "5":
				{
					tankLvl = ("V");
					break;
				} 
				case "6":
				{
					tankLvl = ("VI");
					break;
				} 
				case "7":
				{
					tankLvl = ("VII");
					break;
				} 
				case "8":
				{
					tankLvl = ("VIII");
					break;
				} 
				case "9":
				{
					tankLvl = ("IX");
					break;
				} 
				case "10":
				{
					tankLvl = ("X");
					break;
				} 
			} // End of switch
		tankType = Locale.get(VehicleInfoData2.data[tankNameWONation].type.toString());
		tankNation = Locale.get(VehicleInfoData2.data[tankNameWONation].nation.toString());
		//todo: align
		var i:Number = 1;
		supportSeparator = "";
        while (0<(10-(supportSeparator+data.vehicleName).length))
        {
            supportSeparator += " ";
			i++;
        }
		return supportSeparator + "\t" + leftLvlBorder + tankLvl;
	}
	
	function afterSetData()
	{
		//Logger.addObject(data);
		//Logger.add("afterSetData");
		if(data.vehicleName != "")
			data.vehicleName = data.vehicleName + defineTankInfo(data.vehicleName);
		super.afterSetData();
	}
	
	function updateAfterStateChange()
	{
		//Logger.add("updateAfterStateChange");
		if(data.vehicleName != "")
			data.vehicleName = data.vehicleName + defineTankInfo(data.vehicleName);
		super.updateAfterStateChange();
	}
	
	function getToolTipData()
	{
		//Logger.add("getToolTipData");
		if (this.statusString != null)
        {
            if ((this.statusString == "ready" || this.statusString == "inBattle") && Config.s_config.squad.enabled)
            {
				defineTankInfo(data.vehicleName);
                return (Locale.get("Nation")+ ": " + tankNation + "\n" + Locale.get("Type") + ": " + tankType + "\n" + Locale.get("Battle levels") + ": " + tankBattleLevels);
            }
            else
            {
                return ("#messenger:dialogs/squadChannel/tooltips/status/" + this.statusString);
            } // end else if
        }
        else
        {
            return (null);
        } // end else if
	}
	
}