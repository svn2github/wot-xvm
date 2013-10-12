package com.xvm.vehinfo
{

public class VehicleInfoDataTop
{
    import flash.utils.Dictionary;

    private static var _data:Dictionary = null;
    public static function get data():Dictionary
    {
        if (_data == null)
            _data = _initData();
        return _data;
    }

    private static function _initData():Dictionary
    {
        var d:Dictionary = new Dictionary();

// Statistics summary for all regions
d["ms_1"]={R:0.81300813,D:376,E:3.762195122,F:3.24,S:3.3,U:0.705882353};
d["ltraktor"]={R:0.815789474,D:392,E:3.011983079,F:3.266666667,S:4.490566038,U:0.696428571};
d["t1_cunningham"]={R:0.85,D:372,E:3.237391304,F:3.278688525,S:4.461538462,U:0.698795181};
d["renaultft"]={R:0.735849057,D:316,E:2.745780051,F:2.619047619,S:3,U:0.621621622};
d["ch06_renault_nc31"]={R:0.743589744,D:395,E:3.587121212,F:3.375,S:3.807692308,U:0.658415842};
d["gb01_medium_mark_i"]={R:0.736434109,D:379,E:2.708482143,F:3.02,S:3.176470588,U:0.625};
d["bt_2"]={R:0.801169591,D:404,E:2.526207082,F:2.633451957,S:6.516129032,U:0.615384615};
d["t_26"]={R:0.791666667,D:414,E:2.302674897,F:2.681818182,S:2.643678161,U:0.64957265};
d["t_60"]={R:0.720588235,D:345,E:2.029942503,F:2.130434783,S:2.684684685,U:0.53125};
d["tetrarch_ll"]={R:0.816666667,D:454,E:3.24052436,F:2.971698113,S:5.617021277,U:0.64};
d["h39_captured"]={R:0.797101449,D:538,E:3.362955729,F:3.799196787,S:3.464788732,U:0.736543909};
d["pz35t"]={R:0.794117647,D:411,E:2.283830846,F:2.663865546,S:3.472222222,U:0.65};
d["pzi"]={R:0.679012346,D:263,E:1.643924581,F:1.760869565,S:3.978021978,U:0.488095238};
d["pzii"]={R:0.803278689,D:404,E:2.375,F:2.673267327,S:3.816666667,U:0.635294118};
d["m2_lt"]={R:0.84,D:395,E:2.470411392,F:2.61,S:6.654761905,U:0.653846154};
d["t1_e6"]={R:0.782608696,D:356,E:2.227604167,F:2.261904762,S:3.5,U:0.563380282};
d["t2_lt"]={R:0.840707965,D:362,E:2.413333333,F:2.358490566,S:7.971530249,U:0.498567726};
d["d1"]={R:0.682926829,D:293,E:1.722506394,F:1.902970297,S:1.541666667,U:0.571656051};
d["hotchkiss_h35"]={R:0.73,D:331,E:2.361525974,F:2.125,S:2.235849057,U:0.64};
d["gb03_cruiser_mk_i"]={R:0.735915493,D:408,E:2.40254902,F:2.52173913,S:2.517241379,U:0.576837416};
d["gb58_cruiser_mk_iii"]={R:0.850160256,D:462,E:3.077857143,F:2.879107981,S:3.827505828,U:0.626506024};
d["ch07_vickers_mke_type_bt26"]={R:0.761904762,D:407,E:2.393582888,F:2.621621622,S:2.954545455,U:0.616666667};
d["t2_med"]={R:0.7345,D:377,E:2.22,F:2.370892019,S:3.416666667,U:0.558139535};
d["gb05_vickers_medium_mk_ii"]={R:0.698113208,D:350,E:1.843684211,F:2.19047619,S:1.894736842,U:0.53};
d["at_1"]={R:0.759179266,D:491,E:3.928710425,F:2.87804878,S:1.124190065,U:0.62924282};
d["panzerjager_i"]={R:0.783783784,D:492,E:4.097933884,F:3.027118644,S:2.181818182,U:0.634782609};
d["t18"]={R:0.834,D:482,E:3.852848485,F:3.390374332,S:2.472222222,U:0.64516129};
d["renaultft_ac"]={R:0.754545455,D:466,E:3.886714286,F:3.014352047,S:1.609375,U:0.64516129};
d["gb39_universal_carrierqf2"]={R:0.72,D:382,E:3.182575758,F:2.55,S:2.609090909,U:0.551282051};
d["su_18"]={R:0.709677419,D:390,E:3.896285714,F:2.323529412,S:0.56097561,U:0.608695652};
d["bison_i"]={R:0.810810811,D:721,E:6.006388889,F:2.088888889,S:0.896551724,U:0.61};
d["t57"]={R:0.736486486,D:476,E:4.135177866,F:2.66,S:1.510204082,U:0.628571429};
d["renaultbs"]={R:0.68627451,D:374,E:3.397933884,F:2.037037037,S:0.407407407,U:0.585714286};
d["bt_7"]={R:0.707317073,D:308,E:1.400562324,F:1.365853659,S:6.305555556,U:0.470588235};
d["bt_sv"]={R:0.649717514,D:424,E:1.76557377,F:2.014814815,S:2.830645161,U:0.358823529};
d["m3_stuart_ll"]={R:0.675324675,D:313,E:1.423890063,F:1.496875,S:4.862745098,U:0.439393939};
d["t_127"]={R:0.809187279,D:580,E:2.319111111,F:2.939393939,S:2.987394958,U:0.641826923};
d["t_46"]={R:0.725490196,D:388,E:1.551,F:1.741573034,S:3.856401384,U:0.506493506};
d["t_70"]={R:0.68627451,D:422,E:1.836853002,F:1.847457627,S:2.106382979,U:0.422222222};
d["pz_ii_ausfg"]={R:0.712328767,D:390,E:1.623684211,F:1.648648649,S:3.135416667,U:0.468965517};
d["pz38t"]={R:0.747126437,D:539,E:2.15447561,F:2.44,S:2.838709677,U:0.557003257};
d["pzi_ausf_c"]={R:0.753623188,D:461,E:2.00604119,F:2.34,S:5.694444444,U:0.512820513};
d["pzii_j"]={R:0.760124611,D:417,E:1.605546559,F:2.25848564,S:2.389830508,U:0.643243243};
d["pziii_a"]={R:0.712121212,D:402,E:1.673895582,F:1.863013699,S:4.9,U:0.484848485};
d["t_15"]={R:0.741935484,D:394,E:1.515272155,F:1.885714286,S:6.162162162,U:0.497297297};
d["m22_locust"]={R:0.739130435,D:427,E:1.708547009,F:1.967741935,S:6.077205882,U:0.479452055};
d["m3_stuart"]={R:0.710526316,D:384,E:1.599517544,F:1.74,S:5.974358974,U:0.490909091};
d["amx38"]={R:0.690909091,D:275,E:1.249253731,F:1.288888889,S:1.581395349,U:0.540540541};
d["gb59_cruiser_mk_iv"]={R:0.733333333,D:523,E:2.275347826,F:2.323529412,S:3.03030303,U:0.480769231};
d["gb69_cruiser_mk_ii"]={R:0.701754386,D:431,E:1.794140625,F:2.068376068,S:1.7,U:0.515463918};
d["ch08_type97_chi_ha"]={R:0.746153846,D:567,E:2.364145658,F:2.527777778,S:2.424,U:0.569230769};
d["s35_captured"]={R:0.792086331,D:613,E:2.359562367,F:2.844444444,S:2.515050167,U:0.625};
d["m2_med"]={R:0.711340206,D:455,E:2.165873016,F:2.151445087,S:2.671641791,U:0.493150685};
d["d2"]={R:0.705882353,D:372,E:1.619304348,F:1.70212766,S:1.365853659,U:0.538461538};
d["gb06_vickers_medium_mk_iii"]={R:0.681818182,D:416,E:1.484982436,F:1.767741935,S:1.727272727,U:0.469135802};
d["su_76"]={R:0.734177215,D:620,E:4.002886248,F:2.322033898,S:1.810810811,U:0.554347826};
d["g20_marder_ii"]={R:0.809641533,D:742,E:4.498830409,F:2.571428571,S:2.308724832,U:0.644736842};
d["t82"]={R:0.76,D:636,E:3.976684397,F:2.544517338,S:2.773148148,U:0.549019608};
d["fcm_36pak40"]={R:0.779411765,D:638,E:3.542222222,F:2.84375,S:1.911815562,U:0.653846154};
d["renaultue57"]={R:0.722222222,D:510,E:3.4004,F:2.17,S:2.046153846,U:0.558823529};
d["gb42_valentine_at"]={R:0.708860759,D:528,E:3.106401384,F:2.415730337,S:1.640625,U:0.560693642};
d["su_26"]={R:0.851239669,D:1054,E:7.525571429,F:2.774193548,S:0.479166667,U:0.709433962};
d["sturmpanzer_ii"]={R:0.754929577,D:1035,E:6.46622807,F:2.12,S:0.796610169,U:0.617021277};
d["wespe"]={R:0.717948718,D:673,E:3.961691236,F:2.060606061,S:0.74,U:0.623188406};
d["m37"]={R:0.711538462,D:689,E:4.592209738,F:1.981818182,S:1.084337349,U:0.616666667};
d["lorraine39_l_am"]={R:0.739130435,D:759,E:5.42478355,F:2.251101322,S:0.655913978,U:0.656765677};
d["sexton_i"]={R:0.634615385,D:171,E:1.071274038,F:0.634615385,S:0.038461538,U:0.153846154};
d["a_20"]={R:0.693333333,D:297,E:0.873629355,F:0.953488372,S:6.789237668,U:0.455696203};
d["t_50"]={R:0.863636364,D:431,E:1.195969945,F:1.291666667,S:7.319327731,U:0.513089005};
d["t80"]={R:0.658536585,D:481,E:1.374879406,F:1.419117647,S:2.064981949,U:0.372093023};
d["valentine_ll"]={R:0.74796748,D:595,E:1.566063596,F:2.466666667,S:2.907692308,U:0.635359116};
d["pz38_na"]={R:0.70212766,D:435,E:1.279124821,F:1.39,S:5.320079523,U:0.490740741};
d["pzii_luchs"]={R:0.735294118,D:472,E:1.389583333,F:2.185185185,S:5.221837088,U:0.501886792};
d["m5_stuart"]={R:0.739130435,D:539,E:1.585698529,F:1.753846154,S:5.847560976,U:0.479166667};
d["amx40"]={R:0.703125,D:386,E:1.285284553,F:1.271929825,S:1.707692308,U:0.55952381};
d["gb04_valentine"]={R:0.68852459,D:511,E:1.503594771,F:1.452054795,S:1.425925926,U:0.535714286};
d["gb60_covenanter"]={R:0.716666667,D:578,E:1.700840336,F:1.816326531,S:3.627906977,U:0.492063492};
d["ch09_m5"]={R:0.716981132,D:652,E:1.917905405,F:2.008333333,S:5.803921569,U:0.49122807};
d["a_32"]={R:0.757575758,D:492,E:1.365388548,F:1.700729927,S:5.981744422,U:0.422566372};
d["t_28"]={R:0.757575758,D:698,E:1.99322449,F:2.037735849,S:3.213483146,U:0.512820513};
d["pziii"]={R:0.842911877,D:501,E:1.432171429,F:1.713483146,S:5.08492569,U:0.571856287};
d["vk2001db"]={R:0.632653061,D:418,E:1.19358885,F:1.293333333,S:1.97826087,U:0.318181818};
d["m3_grant"]={R:0.7125,D:578,E:1.865884653,F:1.85046729,S:1.907894737,U:0.484210526};
d["gb07_matilda"]={R:0.724137931,D:723,E:1.954345363,F:2.152284264,S:1.393333333,U:0.602564103};
d["b_1bis_captured"]={R:0.774647887,D:692,E:1.730904762,F:2.89516129,S:2.786561265,U:0.644736842};
d["b1"]={R:0.716981132,D:493,E:1.172937626,F:1.759036145,S:2.12195122,U:0.56626506};
d["gaz_74b"]={R:0.734375,D:842,E:3.239282627,F:2.435897436,S:2.093023256,U:0.564013841};
d["hetzer"]={R:0.764705882,D:894,E:3.310041152,F:3.039473684,S:1.338202247,U:0.590909091};
d["m8a1"]={R:0.738636364,D:755,E:2.850768987,F:2.258566978,S:3.469387755,U:0.543589744};
d["t40"]={R:0.764705882,D:850,E:3.089986014,F:2.55,S:2.237488343,U:0.585365854};
d["somua_sau_40"]={R:0.70212766,D:635,E:2.268821429,F:2.045454545,S:1.103448276,U:0.514285714};
d["gb57_alecto"]={R:0.706896552,D:694,E:2.571863799,F:2.177777778,S:2.578125,U:0.514285714};
d["su_5"]={R:0.783333333,D:1374,E:7.633151184,F:2.239316239,S:0.438423645,U:0.634615385};
d["grille"]={R:0.869565217,D:1224,E:5.564236707,F:2.1125,S:0.613636364,U:0.78};
d["m7_priest"]={R:0.723076923,D:1031,E:4.908963585,F:1.941860465,S:0.671957672,U:0.62962963};
d["_105_lefh18b2"]={R:0.715536105,D:1028,E:3.954843305,F:2.102040816,S:0.288888889,U:0.594936709};
d["amx_105am"]={R:0.784615385,D:1126,E:5.629042553,F:2.113924051,S:0.548672566,U:0.694915254};
d["t_50_2"]={R:0.823529412,D:646,E:1.153351147,F:1.087719298,S:8.236503856,U:0.44665195};
d["vk1602"]={R:0.709677419,D:574,E:1.305315249,F:1.363636364,S:6.651171725,U:0.421052632};
d["m24_chaffee"]={R:0.717557252,D:1062,E:1.831131344,F:1.43902439,S:5.304347826,U:0.447169811};
d["elc_amx"]={R:0.700598802,D:805,E:2.011696597,F:1.390243902,S:6.738461538,U:0.464589235};
d["gb20_crusader"]={R:0.709090909,D:780,E:1.732968491,F:1.821978022,S:3.267857143,U:0.487179487};
d["matilda_ii_ll"]={R:0.696078431,D:812,E:1.331551437,F:2.0125,S:1.791111111,U:0.552941176};
d["t_34"]={R:0.71641791,D:832,E:1.848763103,F:1.892857143,S:3.327981651,U:0.515151515};
d["pziii_iv"]={R:0.709677419,D:742,E:1.685247934,F:1.7,S:3.73015873,U:0.456659619};
d["pziv"]={R:0.770448549,D:1189,E:2.585191563,F:2.655778894,S:2.610909091,U:0.557823129};
d["t_25"]={R:0.719512195,D:877,E:1.436902322,F:1.888888889,S:3.197183099,U:0.5};
d["m4_sherman"]={R:0.815384615,D:1344,E:2.920678178,F:3.042857143,S:2.660714286,U:0.6073903};
d["m4a2e4"]={R:0.660377358,D:668,E:1.39066358,F:1.619047619,S:2.457364341,U:0.426829268};
d["m7_med"]={R:0.728,D:771,E:1.753227273,F:1.827586207,S:4.677966102,U:0.478873239};
d["ram_ii"]={R:0.674293405,D:726,E:1.190703719,F:1.639705882,S:2.26984127,U:0.4543379};
d["gb68_matilda_black_prince"]={R:0.666666667,D:741,E:1.214879326,F:1.67961165,S:1.119402985,U:0.521126761};
d["ch21_t34"]={R:0.753846154,D:985,E:2.1892827,F:2.256756757,S:2.840425532,U:0.546666667};
d["churchill_ll"]={R:0.721428571,D:934,E:1.333922518,F:2.12987013,S:1.914893617,U:0.569892473};
d["kv1"]={R:0.761904762,D:1129,E:1.763820685,F:2.31372549,S:1.544642857,U:0.605042017};
d["kv_220"]={R:0.65,D:745,E:1.080142764,F:1.679324895,S:1.603773585,U:0.495575221};
d["kv_220_action"]={R:0.685245902,D:820,E:1.188425767,F:1.850162866,S:1.582677165,U:0.535433071};
d["t1_hvy"]={R:0.745098039,D:1009,E:1.528484848,F:2.102564103,S:2.103896104,U:0.547169811};
d["t14"]={R:0.694444444,D:841,E:1.218898551,F:1.961904762,S:2.304123711,U:0.513274336};
d["bdr_g1b"]={R:0.725490196,D:999,E:1.537568238,F:1.981132075,S:1.521126761,U:0.553571429};
d["gb08_churchill_i"]={R:0.743243243,D:1031,E:1.472857143,F:2.075268817,S:1.55,U:0.593023256};
d["su_85"]={R:0.71641791,D:1028,E:2.937845433,F:2.142857143,S:1.494047619,U:0.544715447};
d["stugiii"]={R:0.721374046,D:1035,E:2.956074705,F:2.283687943,S:1.788888889,U:0.528301887};
d["m10_wolverine"]={R:0.732142857,D:1043,E:2.896544715,F:2.283185841,S:1.925925926,U:0.534482759};
d["t49"]={R:0.756756757,D:1066,E:2.962475345,F:2.357723577,S:4.395833333,U:0.54245283};
d["s_35ca"]={R:0.725806452,D:1028,E:3.113833992,F:2.161290323,S:1.653846154,U:0.584745763};
d["gb73_at2"]={R:0.727941176,D:920,E:2.043823529,F:2.034146341,S:1.381818182,U:0.616666667};
d["su_8"]={R:0.702970297,D:1764,E:6.785724852,F:2.175,S:0.347389558,U:0.585714286};
d["hummel"]={R:0.7125,D:1643,E:5.86627616,F:1.995391705,S:0.537313433,U:0.612576065};
d["m41"]={R:0.704347826,D:1668,E:6.67030303,F:1.928571429,S:0.423208191,U:0.621621622};
d["amx_13f3am"]={R:0.72519084,D:1696,E:7.066386218,F:1.897727273,S:0.380952381,U:0.659574468};
d["vk2801"]={R:0.726775956,D:1281,E:2.099703733,F:1.58,S:6.684931507,U:0.406976744};
d["t21"]={R:0.693181818,D:979,E:1.6596302,F:1.371134021,S:5.041666667,U:0.424242424};
d["amx_12t"]={R:0.691588785,D:901,E:1.501419414,F:1.263157895,S:4.468085106,U:0.455696203};
d["ch15_59_16"]={R:0.672131148,D:768,E:1.323387097,F:1.228915663,S:5.197674419,U:0.394366197};
d["t_34_85"]={R:0.751937984,D:1254,E:1.742127842,F:1.92,S:3.036231884,U:0.534246575};
d["pziv_schmalturm"]={R:0.700636943,D:1163,E:1.593182917,F:1.687022901,S:1.825581395,U:0.507042254};
d["pzv_pziv"]={R:0.622222222,D:749,E:0.860665597,F:1.283333333,S:2.792592593,U:0.347222222};
d["pzv_pziv_ausf_alfa"]={R:0.515312979,D:371,E:0.426763487,F:0.590319379,S:1.686696635,U:0.164581491};
d["vk3001h"]={R:0.75862069,D:1220,E:1.626119298,F:1.888888889,S:3.393103448,U:0.524590164};
d["vk3001p"]={R:0.75,D:1160,E:1.633243048,F:1.806818182,S:2.931174089,U:0.518181818};
d["vk3002db_v1"]={R:0.625,D:959,E:1.245611964,F:1.387096774,S:1.894957983,U:0.361445783};
d["vk3601h"]={R:0.847058824,D:1692,E:1.990092512,F:2.38028169,S:2.721649485,U:0.625};
d["m4a3e8_sherman"]={R:0.805369128,D:1411,E:1.880808743,F:2.174418605,S:3.148148148,U:0.554726368};
d["sherman_jumbo"]={R:0.802469136,D:1486,E:1.954999372,F:2.265625,S:2.164705882,U:0.594202899};
d["gb21_cromwell"]={R:0.852941176,D:1316,E:1.754116667,F:2.1875,S:4.317757009,U:0.578241431};
d["ch20_type58"]={R:0.79787234,D:1329,E:1.771507937,F:2.072580645,S:2.945945946,U:0.581967213};
d["kv_1s"]={R:0.872204473,D:1559,E:1.924306674,F:2.181818182,S:2.108433735,U:0.655405405};
d["kv2"]={R:0.761904762,D:1433,E:1.66619098,F:1.953608247,S:1.3515625,U:0.595419847};
d["t150"]={R:0.81443299,D:1257,E:1.428458498,F:1.969543147,S:1.603658537,U:0.654320988};
d["m6"]={R:0.791540785,D:1379,E:1.58502264,F:1.923976608,S:2.027777778,U:0.536231884};
d["arl_44"]={R:0.834532374,D:1300,E:1.584902973,F:1.716666667,S:1.620967742,U:0.605263158};
d["gb09_churchill_vii"]={R:0.753623188,D:1268,E:1.440535492,F:1.85,S:1.346153846,U:0.6};
d["gb63_tog_ii"]={R:0.649350649,D:1195,E:0.853902007,F:1.819607843,S:0.818181818,U:0.532374101};
d["su_100"]={R:0.736842105,D:1398,E:2.410064431,F:2.109243697,S:1.986486486,U:0.570731707};
d["su100y"]={R:0.671641791,D:1244,E:1.777701863,F:1.779220779,S:1.096774194,U:0.471698113};
d["dickermax"]={R:0.688172043,D:1279,E:2.325181818,F:1.844036697,S:1.481792717,U:0.514925373};
d["jagdpziv"]={R:0.715686275,D:1243,E:2.071618357,F:2.06557377,S:1.839779006,U:0.542857143};
d["m18_hellcat"]={R:0.847826087,D:1561,E:2.738109162,F:2.282051282,S:3.401174168,U:0.610169492};
d["m36_slagger"]={R:0.727272727,D:1315,E:2.229086933,F:1.896103896,S:1.921568627,U:0.535353535};
d["arl_v39"]={R:0.733333333,D:1240,E:2.032516314,F:1.769230769,S:1.466666667,U:0.541353383};
d["gb40_gun_carrier_churchill"]={R:0.633333333,D:1020,E:1.569404117,F:1.403225806,S:0.774647887,U:0.45754717};
d["gb74_at8"]={R:0.753846154,D:1349,E:1.686470588,F:2.014705882,S:1.311320755,U:0.626373626};
d["s_51"]={R:0.762886598,D:2068,E:6.67018077,F:2.075723831,S:0.1888,U:0.61352657};
d["su_14"]={R:0.668639053,D:2114,E:5.714657901,F:2.281954887,S:0.093247588,U:0.536290323};
d["g_panther"]={R:0.824742268,D:2086,E:5.961257862,F:1.884615385,S:0.233115468,U:0.672169811};
d["m12"]={R:0.75,D:2044,E:6.011096979,F:1.81871345,S:0.249042146,U:0.613095238};
d["lorraine155_50"]={R:0.789203085,D:2012,E:6.097796143,F:1.777272727,S:0.392045455,U:0.634920635};
d["auf_panther"]={R:0.588235294,D:848,E:0.893117409,F:0.786324786,S:2.498349835,U:0.205882353};
d["t71"]={R:0.762376238,D:1623,E:1.931547619,F:1.695238095,S:5.428571429,U:0.503067485};
d["amx_13_75"]={R:0.744897959,D:1161,E:1.290213244,F:1.617283951,S:4.836734694,U:0.505376344};
d["ch02_type62"]={R:0.639705882,D:979,E:1.11219697,F:1.168,S:3.902439024,U:0.36492891};
d["ch16_wz_131"]={R:0.684782609,D:1340,E:1.522208498,F:1.365853659,S:4.986486486,U:0.413461538};
d["kv_13"]={R:0.67357513,D:1139,E:1.016607143,F:1.395061728,S:3.948717949,U:0.487378641};
d["t_43"]={R:0.764705882,D:1597,E:1.451782763,F:1.943181818,S:3.381355932,U:0.576923077};
d["panther_m10"]={R:0.661157025,D:1315,E:1.011538462,F:1.52685422,S:2.104072398,U:0.457875458};
d["pzv"]={R:0.744897959,D:1483,E:1.1678009,F:1.675,S:2.649122807,U:0.559701493};
d["vk3002db"]={R:0.74137931,D:1498,E:1.198592771,F:1.768421053,S:3.386363636,U:0.541176471};
d["t20"]={R:0.787878788,D:1723,E:1.566308777,F:1.935897436,S:3.721428571,U:0.583333333};
d["gb22_comet"]={R:0.782178218,D:1749,E:1.520605765,F:2.063636364,S:3.351145038,U:0.576923077};
d["ch04_t34_1"]={R:0.803738318,D:1722,E:1.639931271,F:1.923809524,S:2.857142857,U:0.6};
d["is"]={R:0.779069767,D:1857,E:1.509862142,F:2.182857143,S:2.432692308,U:0.603448276};
d["kv_3"]={R:0.715447154,D:1708,E:1.219748377,F:1.775,S:1.561797753,U:0.56097561};
d["pzvi"]={R:0.762820513,D:1678,E:1.157444219,F:1.787878788,S:2.087912088,U:0.578431373};
d["pzvi_tiger_p"]={R:0.767123288,D:1800,E:1.241223659,F:1.811320755,S:1.814814815,U:0.609756098};
d["t29"]={R:0.827160494,D:2027,E:1.621210182,F:2.056910569,S:2.202380952,U:0.666666667};
d["amx_m4_1945"]={R:0.771428571,D:1710,E:1.424638158,F:1.726190476,S:1.803149606,U:0.570247934};
d["gb10_black_prince"]={R:0.786516854,D:1759,E:1.212827586,F:1.842105263,S:1.520325203,U:0.639175258};
d["ch10_is2"]={R:0.828193833,D:2007,E:1.568328125,F:2.011111111,S:1.96,U:0.638709677};
d["su100m1"]={R:0.724489796,D:1691,E:2.037478485,F:1.893333333,S:2.044642857,U:0.543046358};
d["su122_44"]={R:0.733253589,D:1816,E:2.161441799,F:2.035971223,S:1.6875,U:0.510067114};
d["su_152"]={R:0.723404255,D:1760,E:2.023248053,F:1.918367347,S:1.438202247,U:0.552941176};
d["jagdpanther"]={R:0.726618705,D:1837,E:2.161749361,F:2.08974359,S:1.733944954,U:0.542056075};
d["t25_2"]={R:0.744360902,D:1741,E:2.048444605,F:1.866666667,S:2.15503876,U:0.561151079};
d["t25_at"]={R:0.728,D:1770,E:2.10738726,F:1.991549296,S:2.074766355,U:0.552727273};
d["amx_ac_mle1946"]={R:0.736263736,D:1643,E:2.003304878,F:1.723214286,S:1.621428571,U:0.527027027};
d["gb71_at_15a"]={R:0.65060241,D:1362,E:1.602541176,F:1.365384615,S:1.013157895,U:0.475609756};
d["gb75_at7"]={R:0.795,D:1973,E:1.578518519,F:2.078651685,S:1.24137931,U:0.661971831};
d["object_212"]={R:0.719327731,D:2530,E:5.499401972,F:1.891891892,S:0.128712871,U:0.585526316};
d["g_tiger"]={R:0.701005025,D:2334,E:4.965062637,F:1.706329114,S:0.143468951,U:0.56640625};
d["m40m43"]={R:0.74457429,D:2475,E:6.037442692,F:1.825301205,S:0.155660377,U:0.625187406};
d["lorraine155_51"]={R:0.685950413,D:2407,E:6.018386872,F:1.816,S:0.283613445,U:0.585365854};
d["amx_13_90"]={R:0.860655738,D:1725,E:1.567787514,F:1.805084746,S:5.538095238,U:0.59};
d["ch17_wz131_1_wz132"]={R:0.709090909,D:1349,E:1.284457672,F:1.240786241,S:4.873015873,U:0.400966184};
d["t_44"]={R:0.763888889,D:1862,E:1.431982992,F:1.818181818,S:4.27027027,U:0.555140187};
d["indien_panzer"]={R:0.694736842,D:1824,E:1.402880278,F:1.537383178,S:1.772321429,U:0.467741935};
d["panther_ii"]={R:0.761061947,D:1930,E:1.331114058,F:1.882716049,S:3.623481781,U:0.55597723};
d["pershing"]={R:0.79020979,D:2061,E:1.431290611,F:1.923976608,S:3.72761194,U:0.596774194};
d["t26_e4_superpershing"]={R:0.721428571,D:1899,E:1.309853192,F:1.575221239,S:1.628853268,U:0.560096154};
d["t69"]={R:0.806666667,D:2689,E:1.992186667,F:2.227642276,S:2.673758865,U:0.63559322};
d["gb23_centurion"]={R:0.757142857,D:2037,E:1.405064523,F:1.672316384,S:2.391304348,U:0.555555556};
d["ch01_type59"]={R:0.7328125,D:1801,E:1.385313354,F:1.774888559,S:3.182100684,U:0.540807914};
d["ch05_t34_2"]={R:0.732824427,D:1984,E:1.526057692,F:1.696202532,S:2.8,U:0.529801325};
d["is_3"]={R:0.820895522,D:2236,E:1.490638384,F:2.258205689,S:2.521052632,U:0.627906977};
d["kv4"]={R:0.705084746,D:1966,E:1.191671431,F:1.534883721,S:1.49382716,U:0.540425532};
d["kv_5"]={R:0.732673267,D:2143,E:1.204209972,F:1.981818182,S:2.122085048,U:0.551312649};
d["object252"]={R:0.77173913,D:2240,E:1.444954261,F:1.83935743,S:1.802919708,U:0.566978193};
d["lowe"]={R:0.663934426,D:1980,E:1.199754327,F:1.633507853,S:1.737296261,U:0.527542373};
d["pzvib_tiger_ii"]={R:0.766666667,D:2180,E:1.362638514,F:2.012195122,S:2.280871671,U:0.595477387};
d["vk4502a"]={R:0.798941799,D:2215,E:1.410911964,F:1.918128655,S:2.467320261,U:0.6};
d["m6a2e1"]={R:0.641791045,D:1726,E:1.150716049,F:1.411073826,S:1.797979798,U:0.458955224};
d["t32"]={R:0.831932773,D:2255,E:1.455091784,F:2.286384977,S:2.894409938,U:0.66};
d["t34_hvy"]={R:0.726865672,D:2108,E:1.405352503,F:1.631399317,S:1.528169014,U:0.551480959};
d["amx_50_100"]={R:0.836621942,D:2482,E:1.77279274,F:2.301204819,S:2.166666667,U:0.63117284};
d["fcm_50t"]={R:0.729366603,D:1996,E:1.330894737,F:1.640264026,S:2.447058824,U:0.485148515};
d["gb11_caernarvon"]={R:0.762264151,D:2152,E:1.345193089,F:1.668449198,S:1.927631579,U:0.564102564};
d["ch11_110"]={R:0.785123967,D:2270,E:1.4643658,F:1.784313725,S:1.866666667,U:0.591304348};
d["isu_152"]={R:0.705653021,D:2438,E:2.413880895,F:2.307692308,S:1.669421488,U:0.569688769};
d["su_101"]={R:0.684210526,D:2068,E:2.088392399,F:1.805882353,S:2.177419355,U:0.482758621};
d["ferdinand"]={R:0.7,D:2358,E:1.965206553,F:2.230769231,S:1.573459716,U:0.56626506};
d["jagdpantherii"]={R:0.698039216,D:2401,E:2.087520564,F:1.954954955,S:1.603015075,U:0.511235955};
d["jagdtiger_sdkfz_185"]={R:0.659533074,D:1998,E:1.536828784,F:1.606280193,S:1.254320988,U:0.497512438};
d["t28"]={R:0.682170543,D:2138,E:1.859263427,F:1.829059829,S:0.974358974,U:0.558282209};
d["t28_prototype"]={R:0.692982456,D:2248,E:1.954432662,F:1.820512821,S:0.936507937,U:0.556521739};
d["amx_ac_mle1948"]={R:0.725663717,D:2239,E:2.239135922,F:1.845,S:1.717391304,U:0.516483516};
d["gb72_at15"]={R:0.720588235,D:2299,E:1.585579533,F:1.881632653,S:1.047808765,U:0.572390572};
d["object_261"]={R:0.745247148,D:2602,E:5.003313805,F:1.787341772,S:0.177083333,U:0.615749526};
d["g_e"]={R:0.759493671,D:2620,E:4.516482759,F:1.7043222,S:0.11827957,U:0.621669627};
d["t92"]={R:0.734899329,D:2522,E:5.044296804,F:1.566473988,S:0.12,U:0.603448276};
d["bat_chatillon155"]={R:0.68772137,D:2626,E:5.470401215,F:1.905194805,S:0.206703911,U:0.597849462};
d["t_54"]={R:0.782351107,D:2535,E:1.536393939,F:1.933797909,S:4.608649789,U:0.539370079};
d["e_50"]={R:0.752969121,D:2696,E:1.540603373,F:1.993865031,S:3.497866287,U:0.538071066};
d["pro_ag_a"]={R:0.595907928,D:1289,E:0.781260931,F:0.901785714,S:1.218309859,U:0.231578947};
d["m46_patton"]={R:0.777777778,D:2776,E:1.633029471,F:2.114285714,S:3.591623037,U:0.57554672};
d["t54e1"]={R:0.774193548,D:2988,E:1.707563025,F:2.265625,S:1.972144847,U:0.6};
d["lorraine40t"]={R:0.832369942,D:2339,E:1.509322827,F:2.347058824,S:3.542124542,U:0.623622047};
d["gb24_centurion_mk3"]={R:0.725,D:2465,E:1.432874273,F:1.742990654,S:2.12755102,U:0.522580645};
d["ch18_wz_120"]={R:0.715053763,D:2414,E:1.463297914,F:1.778333333,S:2.671018277,U:0.496268657};
d["is8"]={R:0.714285714,D:2750,E:1.528044014,F:2.376470588,S:2.253263708,U:0.599236641};
d["st_i"]={R:0.674351585,D:2331,E:1.226950998,F:1.577540107,S:1.503649635,U:0.522613065};
d["e_75"]={R:0.745247148,D:2760,E:1.437451267,F:2.153284672,S:2.273026316,U:0.609137056};
d["vk4502p"]={R:0.700404858,D:2553,E:1.309058462,F:2.204244032,S:2.303703704,U:0.582172702};
d["m103"]={R:0.742857143,D:2776,E:1.500782361,F:2.096605744,S:2.262686567,U:0.566666667};
d["amx_50_120"]={R:0.765060241,D:3214,E:1.836569767,F:2.604316547,S:2.152173913,U:0.606481481};
d["gb12_conqueror"]={R:0.733333333,D:2649,E:1.358534799,F:1.792035398,S:1.708955224,U:0.529850746};
d["ch12_111_1_2_3"]={R:0.719101124,D:2419,E:1.307655104,F:1.633333333,S:1.886435331,U:0.493902439};
d["object_704"]={R:0.722580645,D:2995,E:1.871625399,F:2.28436019,S:1.744413408,U:0.591054313};
d["su122_54"]={R:0.674311927,D:2323,E:1.518151085,F:1.742574257,S:1.984,U:0.484732824};
d["jagdtiger"]={R:0.699186992,D:2897,E:1.609461874,F:2.242307692,S:1.487126674,U:0.576377953};
d["t30"]={R:0.719354839,D:2921,E:1.770136262,F:2.078947368,S:1.46641791,U:0.564885496};
d["t95"]={R:0.669724771,D:2494,E:1.467022007,F:1.930197269,S:0.828125,U:0.616372392};
d["amx50_foch"]={R:0.735177866,D:2696,E:1.739203895,F:1.974820144,S:1.950310559,U:0.532544379};
d["gb32_tortoise"]={R:0.700757576,D:2662,E:1.330917582,F:1.894545455,S:0.956284153,U:0.556122449};
d["t62a"]={R:0.773109244,D:2995,E:1.535742847,F:2.029339853,S:3.04109589,U:0.538001197};
d["e50_ausf_m"]={R:0.73470948,D:2997,E:1.46182161,F:1.943019943,S:2.611764706,U:0.516666667};
d["leopard1"]={R:0.527902555,D:1155,E:0.592188189,F:0.741274586,S:1.022691208,U:0.174681986};
d["m48a1"]={R:0.785714286,D:3243,E:1.621602804,F:2.12565445,S:2.612440191,U:0.567251462};
d["bat_chatillon25t"]={R:0.796551724,D:2865,E:1.591452502,F:2.260545906,S:4.497152156,U:0.5591133};
d["gb70_fv4202_105"]={R:0.656084656,D:2512,E:1.288155416,F:1.609090909,S:1.967611336,U:0.433526012};
d["ch19_121"]={R:0.664596273,D:2473,E:1.268118698,F:1.629370629,S:1.956656347,U:0.419354839};
d["is_4"]={R:0.716981132,D:2979,E:1.19162,F:1.869047619,S:1.917431193,U:0.583333333};
d["is_7"]={R:0.798177083,D:2862,E:1.331057831,F:1.879392971,S:2.476510067,U:0.616463985};
d["e_100"]={R:0.765667575,D:2986,E:1.105855974,F:1.952,S:1.790697674,U:0.615803815};
d["maus"]={R:0.752631579,D:2690,E:0.896621528,F:1.780141844,S:1.779816514,U:0.63237774};
d["t110"]={R:0.800550206,D:3350,E:1.522872358,F:2.178913738,S:2.098039216,U:0.625316456};
d["t57_58"]={R:0.763297872,D:3282,E:1.458508301,F:2.046070461,S:1.325,U:0.540856031};
d["f10_amx_50b"]={R:0.771276596,D:3272,E:1.55825566,F:2.273458445,S:2.055172414,U:0.560240964};
d["gb13_fv215b"]={R:0.704845815,D:2719,E:1.087698324,F:1.634868421,S:1.492374728,U:0.483050847};
d["ch22_113"]={R:0.605095541,D:2119,E:0.921497725,F:1.230769231,S:1.513043478,U:0.362637363};
d["object263"]={R:0.635359116,D:2594,E:1.365121875,F:1.617647059,S:1.588235294,U:0.430107527};
d["object268"]={R:0.731138546,D:3299,E:1.69174261,F:2.056603774,S:1.714652956,U:0.552631579};
d["jagdpz_e100"]={R:0.649446494,D:2763,E:1.255768939,F:1.592920354,S:1.1125,U:0.51497006};
d["t110e3"]={R:0.638418079,D:2867,E:1.398699187,F:1.72327044,S:1.143564356,U:0.512378902};
d["t110e4"]={R:0.757437071,D:3222,E:1.611087774,F:1.927799607,S:1.456221198,U:0.578740157};
d["amx_50fosh_155"]={R:0.7239819,D:3208,E:1.733846486,F:2.015625,S:1.610662359,U:0.510869565};
d["gb48_fv215b_183"]={R:0.615720524,D:2545,E:1.272644135,F:1.434210526,S:0.871794872,U:0.409302326};

        return d;
    }
}

}
