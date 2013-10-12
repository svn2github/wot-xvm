package xvm.hangar.components.Profile
{
    import com.xvm.*;
    import com.xvm.l10n.Locale;
    import com.xvm.types.stat.StatData;
    import com.xvm.vehinfo.*;
    import com.xvm.utils.*;
    import flash.events.*;
    import flash.text.*;
    import flash.utils.*;
    import net.wg.data.gui_items.dossier.*;
    import net.wg.gui.lobby.profile.components.*;
    import net.wg.gui.lobby.profile.pages.technique.*;
    import xvm.*;

    public class TechniqueStatisticTab
    {
        private static const DL_WIDTH:int = 200;
        private var proxy:net.wg.gui.lobby.profile.pages.technique.TechniqueStatisticTab;

        private var playerName:String;
        private var _data:VehicleDossier;

        private var cache:Dictionary;
        private var controlsMap:Dictionary;
        private var controls:Array;
        private var ratingTF:TextField;
        private var specificDamage:DashLineTextItem;
        private var avgCaptureDL:DashLineTextItem;
        private var avgDefenceDL:DashLineTextItem;

        // ENTRY POINTS

        public function TechniqueStatisticTab(proxy:net.wg.gui.lobby.profile.pages.technique.TechniqueStatisticTab)
        {
            try
            {
                this.proxy = proxy;
                cache = new Dictionary();
                controlsMap = new Dictionary(true);
                createControls();
                controls = [
                    { y: 65, width: DL_WIDTH, control: proxy.battlesDL },
                    { y: 82, width: DL_WIDTH, control: proxy.winsDL },
                    { y: 99, width: DL_WIDTH, control: proxy.defeatsDL },
                    { y: 116, width: DL_WIDTH, control: proxy.surviveDL },
                    { y: 133, width: DL_WIDTH + 15, control: proxy.accuracyDL },
                    { y: 153, control: proxy.efficiencyTF },
                    { y: 173, width: DL_WIDTH, control: proxy.maxExpDL },
                    { y: 190, width: DL_WIDTH, control: proxy.maxKillDL },
                    { y: 213, width: DL_WIDTH, control: proxy.totalKillDL },
                    { y: 230, width: DL_WIDTH, control: proxy.totalDeadDL },
                    { y: 247, width: DL_WIDTH, control: proxy.killRatioDL },
                    { y: 270, width: DL_WIDTH, control: proxy.dealtDmgDL },
                    { y: 287, width: DL_WIDTH, control: proxy.receivedDmgDL },
                    { y: 304, width: DL_WIDTH, control: proxy.dmgRatioDL },
                    { y: 324, control: proxy.avgResultsTF },
                    { y: 344, width: DL_WIDTH, control: proxy.avgExpDL },
                    { y: 361, width: DL_WIDTH, control: proxy.avgDmgDealtDL },
                    { y: 378, width: DL_WIDTH, control: proxy.avgDmgReceivedDL },
                    { y: 395, width: DL_WIDTH, control: proxy.avgKillsDL },
                    { y: 412, width: DL_WIDTH, control: proxy.avgDetectedDL },
                    { y: 429, width: DL_WIDTH, control: specificDamage },       // vehicle only
                    { y: 429, width: DL_WIDTH, control: avgCaptureDL },         // summary only
                    { y: 446, width: DL_WIDTH, control: avgDefenceDL }          // summary only
                    //{ y: 463, width: DL_WIDTH, control: proxy.avgScoutingDmgDL }
                ];

                setupControls();
                createTextFields();
                updateCommonData(new Data());
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        public function configUI():void
        {
            try
            {
                setupControls();
                updateCommonData(new Data());
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        public function update(data:VehicleDossier):void
        {
            //Logger.addObject(data);

            try
            {
                if (_data == data)
                    return;

                if (!data)
                {
                    _data = null;
                    return;
                }

                var vid:int = page.listComponent.selectedItem.id;
                if (vid != 0)
                    ratingTF.htmlText = "";

                //Logger.add("vid: " + vid + ", data.id:" + data.id[0])
                if (vid != data.id[0])
                    return;

                _data = data;

                if (data.id[0] == 0)
                {
                    playerName = data.id[1];
                    if (playerName == null)
                        playerName = XvmHangar.Globals[XvmHangar.G_NAME];
                    updateSummaryData();
                }
                else
                {
                    updateVehicleData();
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        // PRIVATE

        private function get page():ProfileTechnique
        {
            return proxy.parent.parent.parent.parent as ProfileTechnique;
        }

        private function TF(dl:DashLineTextItem):TextField
        {
            return controlsMap[dl];
        }

        private function setupControls():void
        {
            for each (var c:Object in controls)
            {
                if (c.hasOwnProperty("y"))
                    c.control.y = c.y;
                if (c.hasOwnProperty("width"))
                    c.control.width = c.width;
            }
        }

        private function createControls():void
        {
            ratingTF = Utils.cloneTextField(proxy.battlesDL.labelTextField);
            ratingTF.antiAliasType = AntiAliasType.ADVANCED;
            ratingTF.multiline = true;
            ratingTF.wordWrap = false;
            ratingTF.x = proxy.efficiencyTF.x + 18;
            ratingTF.y = proxy.battlesDL.y - 52;
            ratingTF.width = 400;
            ratingTF.height = 80;
            var tf:TextFormat = new TextFormat("$FieldFont", 16, Defines.UICOLOR_DEFAULT2);
            ratingTF.styleSheet = Utils.createTextStyleSheet("txt", tf);
            proxy.addChild(ratingTF);

            specificDamage = Utils.cloneDashLineTextItem(proxy.avgDmgReceivedDL);
            specificDamage.label = Locale.get("Specific damage (Avg dmg / HP)");
            specificDamage.y += 17;
            specificDamage.visible = false;
            proxy.addChild(specificDamage);

            avgCaptureDL = Utils.cloneDashLineTextItem(specificDamage);
            avgCaptureDL.label = Locale.get("Capture points");
            avgCaptureDL.y += 17;
            avgCaptureDL.visible = false;
            proxy.addChild(avgCaptureDL);

            avgDefenceDL = Utils.cloneDashLineTextItem(avgCaptureDL);
            avgDefenceDL.label = Locale.get("Defence points");
            avgDefenceDL.y += 17;
            avgDefenceDL.visible = false;
            proxy.addChild(avgDefenceDL);
        }

        private function createTextFields():void
        {
            for each (var c:* in controls)
            {
                var dl:DashLineTextItem = c.control as DashLineTextItem;
                if (dl == null)
                    continue;
                var tf:TextField = new TextField();
                tf.selectable = false;
                tf.antiAliasType = AntiAliasType.ADVANCED;
                tf.styleSheet = Utils.createTextStyleSheet("txt", dl.valueTextField.getTextFormat());
                tf.x = dl.x + c.width + 5;
                tf.y = dl.y;
                tf.width = 220;
                controlsMap[dl] = tf;
                proxy.addChild(tf);
            }
        }

        private function updateCommonData(data:Data):void
        {
            proxy.battlesDL.value = color(App.utils.locale.integer(data.battlesCount));
            TF(proxy.battlesDL).htmlText = formatHtmlText(data.winsToNextPercentStr, Defines.UICOLOR_DEFAULT2);

            var ratingColor:int = MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_RATING, data.winPercent);
            proxy.winsDL.value = color(App.utils.locale.integer(data.winsCount));
            TF(proxy.winsDL).htmlText = formatHtmlText(App.utils.locale.numberWithoutZeros(data.winPercent) + "%", ratingColor);

            proxy.defeatsDL.value = color(App.utils.locale.integer(data.lossesCount));
            TF(proxy.defeatsDL).htmlText = formatHtmlText(
                color(App.utils.locale.numberWithoutZeros(data.lossPercent) + "%", Defines.UICOLOR_GOLD) +
                " " + Locale.get("draws") + ": " + color(App.utils.locale.integer(data.drawsCount), Defines.UICOLOR_GOLD) +
                " (" + color(App.utils.locale.numberWithoutZeros(data.drawsPercent) + "%", Defines.UICOLOR_GOLD) + ")",
                Defines.UICOLOR_DEFAULT2);

            proxy.surviveDL.value = color(App.utils.locale.integer(data.survivalCount));
            TF(proxy.surviveDL).htmlText = formatHtmlText(App.utils.locale.numberWithoutZeros(data.survivePercent) + "%", Defines.UICOLOR_GOLD);

            proxy.accuracyDL.value = convertPercentValue(data.hitsRatio);

            proxy.maxExpDL.value = color(App.utils.locale.integer(data.maxXP));
            TF(proxy.maxExpDL).htmlText = formatHtmlText(data.maxXPVehicleName, Defines.UICOLOR_GOLD2);

            proxy.maxKillDL.value = color(App.utils.locale.integer(data.maxFrags));
            TF(proxy.maxKillDL).htmlText = formatHtmlText(data.maxFragsVehicleName, Defines.UICOLOR_GOLD2);

            proxy.totalKillDL.value = color(App.utils.locale.integer(data.fragsCount));

            proxy.totalDeadDL.value = color(App.utils.locale.integer(data.deathsCount));

            proxy.killRatioDL.value = color(App.utils.locale.numberWithoutZeros(data.fragsEfficiency), 0xCBAD78);

            proxy.dealtDmgDL.value = color(App.utils.locale.integer(data.damageDealt));

            proxy.receivedDmgDL.value = color(App.utils.locale.integer(data.damageReceived));

            proxy.dmgRatioDL.value = color(App.utils.locale.numberWithoutZeros(data.damageEfficiency), 0xCBAD78);

            proxy.avgExpDL.value = color(App.utils.locale.integer(data.avgXP));
            proxy.avgDmgDealtDL.value = color(App.utils.locale.integer(data.avgDamageDealt));
            proxy.avgDmgReceivedDL.value = color(App.utils.locale.integer(data.avgDamageReceived));
            proxy.avgKillsDL.value = color(App.utils.locale.numberWithoutZeros(data.avgFrags));
            proxy.avgDetectedDL.value = color(App.utils.locale.numberWithoutZeros(data.avgEnemiesSpotted));

            // stat

            TF(proxy.avgDmgDealtDL).htmlText = "";
            TF(proxy.avgKillsDL).htmlText = "";
            TF(proxy.avgDetectedDL).htmlText = "";
            specificDamage.value = "";
            TF(specificDamage).htmlText = "";
            proxy.avgScoutingDmgDL.value = "Will be implemented...";
        }

        private function updateSummaryData():void
        {
            var data:Data = prepareData(page.currentData as Dossier);
            updateCommonData(data);

            // stat
            var s:String = "";
            if (data.stat == null)
                ratingTF.htmlText = "";
            else
            {
                s += Locale.get("Avg level") + ": " + (!data.stat.lvl ? "-" :
                    color(App.utils.locale.numberWithoutZeros(data.stat.lvl), MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_AVGLVL, data.stat.lvl))) + " ";
                s += Locale.get("WN6") + ": " + (!data.stat.wn ? "-- (-)" :
                    color((data.stat.xwn == 100 ? "XX" : (data.stat.xwn < 10 ? "0" : "") + data.stat.xwn), MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_X, data.stat.xwn)) + " (" +
                    color(App.utils.locale.integer(data.stat.wn), MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_WN, data.stat.wn)) + ")") + " ";
                s += Locale.get("EFF") + ": " + (!data.stat.e ? "-- (-)" :
                    color((data.stat.xeff == 100 ? "XX" : (data.stat.xeff < 10 ? "0" : "") + data.stat.xeff), MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_X, data.stat.xeff)) + " (" +
                    color(App.utils.locale.integer(data.stat.e), MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_EFF, data.stat.e)) + ")") + "\n";
                s += "\t" + size(Locale.get("updated") + ":", 13) + " " + size(color(data.stat.dt.substr(0, 10), 0xCCCCCC), 14);
                ratingTF.htmlText = "<textformat leading='-2' tabstops='[190]'>" + formatHtmlText(s) + "</textformat>";
            }

            specificDamage.visible = false;

            avgCaptureDL.visible = data.stat != null;
            avgDefenceDL.visible = data.stat != null;
            if (data.stat != null)
            {
                avgCaptureDL.value = color(size(App.utils.locale.numberWithoutZeros(data.stat.cap / data.stat.b), 12));
                avgDefenceDL.value = color(size(App.utils.locale.numberWithoutZeros(data.stat.def / data.stat.b), 12));
            }
        }

        private function updateVehicleData():void
        {
            var data:Data = prepareData(_data);
            updateCommonData(data);

            ratingTF.htmlText = "";

            var vi:Object = VehicleInfo.getInfo2ByVid(_data.id[0]);
            if (vi == null)
                return;
            //Logger.addObject(vi, "", 2);

            var colorAvg:int;
            var colorTop:int;

            // wins
            if (vi.avg.R)
            {
                colorAvg = MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_RATING, vi.avg.R * 100);
                colorTop = MacrosUtil.GetDynamicColorValueInt(Defines.DYNAMIC_COLOR_RATING, vi.top.R * 100);
                TF(proxy.winsDL).htmlText += formatHtmlText(
                    " " + Locale.get("avg") + ": " + color(App.utils.locale.numberWithoutZeros(vi.avg.R * 100), colorAvg) +
                    " " + Locale.get("top") + ": " + color(App.utils.locale.numberWithoutZeros(vi.top.R * 100), colorTop),
                    Defines.UICOLOR_DEFAULT2);
            }

            // survival
            if (vi.avg.U)
            {
                TF(proxy.surviveDL).htmlText += formatHtmlText(
                    " " + Locale.get("avg") + ": " + color(App.utils.locale.numberWithoutZeros(vi.avg.U * 100), Defines.UICOLOR_GOLD) +
                    " " + Locale.get("top") + ": " + color(App.utils.locale.numberWithoutZeros(vi.top.U * 100), Defines.UICOLOR_GOLD),
                    Defines.UICOLOR_DEFAULT2);
            }

            // dmg
            if (vi.avg.D)
            {
                TF(proxy.avgDmgDealtDL).htmlText = formatHtmlText(
                    Locale.get("avg") + ": " + color(App.utils.locale.numberWithoutZeros(vi.avg.D), Defines.UICOLOR_GOLD) +
                    " " + Locale.get("top") + ": " + color(App.utils.locale.numberWithoutZeros(vi.top.D), Defines.UICOLOR_GOLD),
                    Defines.UICOLOR_DEFAULT2);
            }

            // frags
            if (vi.avg.F)
            {
                TF(proxy.avgKillsDL).htmlText = formatHtmlText(
                    Locale.get("avg") + ": " + color(App.utils.locale.numberWithoutZeros(vi.avg.F), Defines.UICOLOR_GOLD) +
                    " " + Locale.get("top") + ": " + color(App.utils.locale.numberWithoutZeros(vi.top.F), Defines.UICOLOR_GOLD),
                    Defines.UICOLOR_DEFAULT2);
            }

            // spotted
            if (vi.avg.S)
            {
                TF(proxy.avgDetectedDL).htmlText = formatHtmlText(
                    Locale.get("avg") + ": " + color(App.utils.locale.numberWithoutZeros(vi.avg.S), Defines.UICOLOR_GOLD) +
                    " " + Locale.get("top") + ": " + color(App.utils.locale.numberWithoutZeros(vi.top.S), Defines.UICOLOR_GOLD),
                    Defines.UICOLOR_DEFAULT2);
            }

            // specific damage
            var specDmg:Number = data.avgDamageDealt / vi.hptop;
            specificDamage.visible = true;
            specificDamage.value = color(size(App.utils.locale.numberWithoutZeros(specDmg), 12));

            if (vi.avg.E)
            {
                TF(specificDamage).htmlText = formatHtmlText(size(
                    Locale.get("avg") + ": " + color(App.utils.locale.numberWithoutZeros(vi.avg.E), Defines.UICOLOR_GOLD) +
                    " " + Locale.get("top") + ": " + color(App.utils.locale.numberWithoutZeros(vi.top.E), Defines.UICOLOR_GOLD),
                    12), Defines.UICOLOR_DEFAULT2);
            }

            avgCaptureDL.visible = false;
            avgDefenceDL.visible = false;
        }

        private function prepareData(dossier:Dossier):Data
        {
            try
            {
                // skip empty result - data is not loaded yet
                if (dossier.getBattlesCount() == 0)
                    return new Data();

                var key:String = dossier.id == null ? "0" : dossier.id.toString(); // "vId,playerName" or "vid," for self
                var data:Data = cache[key];
                if (data == null)
                {
                    data = extractData(dossier);
                    calculateData(data);
                    cache[key] = data;
                }
                if (data.stat == null)
                    setStatData(data);
                return data;
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
            return new Data();
        }

        private function getRecord(dossier:Dossier, recordName:String):*
        {
            return uint(App.itemsMgr._callItemMethodS(dossier.itemTypeIdx, dossier.id, 'getRecord', [ recordName ]));
        }

        private function extractData(dossier:Dossier):Data
        {
            var data:Data = new Data();
            data.battlesCount = dossier.getBattlesCount();
            data.winsCount = dossier.getWinsCount();
            data.lossesCount = getRecord(dossier, 'losses');

            data.survivalCount = getRecord(dossier, 'survivedBattles');
            data.winAndSurvived = getRecord(dossier, 'winAndSurvived');
            data.shotsCount = getRecord(dossier, 'shots');
            data.hitsCount = getRecord(dossier, 'hits');

            data.maxXP = (dossier is VehicleDossier) ? dossier.getMaxVehicleXP() : dossier.getMaxVehicleXP();
            data.maxFrags = (dossier is VehicleDossier) ? dossier.getMaxVehicleFrags() : dossier.getMaxVehicleFrags();
            data.fragsCount = dossier.getFragsCount();
            data.fragsEfficiency = dossier.getFragsEfficiency();
            data.deathsCount = dossier.getDeathsCount();
            data.damageDealt = dossier.getDamageDealt();
            data.damageReceived = dossier.getDamageReceived();
            data.damageEfficiency = dossier.getDamageEfficiency();
            data.avgXP = dossier.getAvgXP();
            data.avgFrags = dossier.getAvgFrags();
            data.avgEnemiesSpotted = dossier.getAvgEnemiesSpotted();
            data.avgDamageDealt = dossier.getAvgDamageDealt();
            data.avgDamageReceived = dossier.getAvgDamageReceived();

            return data;
        }

        private function calculateData(data:Data):void
        {
            // Ratios
            data.drawsCount = data.battlesCount - data.winsCount - data.lossesCount;
            data.winPercent = pb(data.winsCount, data.battlesCount) * 100;
            data.lossPercent = pb(data.lossesCount, data.battlesCount) * 100;
            data.drawsPercent = pb(data.drawsCount, data.battlesCount) * 100;
            data.survivePercent = pb(data.survivalCount, data.battlesCount) * 100;
            data.hitsRatio = pb(data.hitsCount, data.shotsCount);

            // Wins to next percent
            if (data.winPercent > 0 && data.winPercent < 100)
            {
                var r1:Number = Math.round(data.winPercent) / 100 + 0.005;
                var r2:Number = int(data.winPercent) / 100 + 0.01;
                var b1:Number = (data.battlesCount * r1 - data.winsCount) / (1 - r1);
                var b2:Number = (data.battlesCount * r2 - data.winsCount) / (1 - r2);
                b1 = Math.max(0, b1 % 1 == 0 ? b1 : (int(b1) + 1));
                b2 = Math.max(0, b2 % 1 == 0 ? b2 : (int(b2) + 1));
                data.winsToNextPercentStr = (b2 > b1)
                    ? color(App.utils.locale.integer(b1), Defines.UICOLOR_GOLD) + Locale.get(" to ") +
                        color(App.utils.locale.numberWithoutZeros((r2 * 100 - 0.5).toFixed(1)) + "%", Defines.UICOLOR_GOLD) + " / " +
                        color(App.utils.locale.integer(b2), Defines.UICOLOR_GOLD) + Locale.get(" to ") +
                        color(App.utils.locale.numberWithoutZeros((r2 * 100).toFixed(1)) + "%", Defines.UICOLOR_GOLD)
                    : color(App.utils.locale.integer(b2), Defines.UICOLOR_GOLD) + Locale.get(" to ") +
                        color(App.utils.locale.numberWithoutZeros((r2 * 100).toFixed(1)) + "%", Defines.UICOLOR_GOLD) + " / " +
                        color(App.utils.locale.integer(b1), Defines.UICOLOR_GOLD) + Locale.get(" to ") +
                        color(App.utils.locale.numberWithoutZeros((r2 * 100 + 0.5).toFixed(1)) + "%", Defines.UICOLOR_GOLD);
            }
        }

        private function setStatData(data:Data):void
        {
            var stat:StatData = Stat.getUserDataByName(playerName);
            if (stat == null)
                return;
            data.stat = stat;
        }

        private function pb(value:Number, battles:Number):Number
        {
            return battles <= 0 ? 0 : value / battles;
        }

        private function formatHtmlText(txt:String, color:uint=1):String
        {
            return "<span class='txt'>" + (color == 1 ? txt : this.color(txt, color)) + "</span>";
        }

        private function size(txt:String, sz:uint=14):String
        {
            return "<font size='" + sz.toString() + "'>" + txt + "</font>";
        }

        private function color(txt:String, color:uint=0xFDF4CE):String
        {
            return "<font color='#" + color.toString(16) + "'>" + txt + "</font>";
        }

        // from WG

        internal function convertPercentValue(arg1:Number):String
        {
            var loc1:*=App.utils.locale;
            var loc2:*=loc1.numberWithoutZeros(arg1 * 100);
            return color(loc2) + color(" %", 6513507);
        }
    }
}
import com.xvm.types.stat.StatData;

class Data
{
    public var battlesCount:Number = 0;
    public var winsCount:Number = 0;
    public var lossesCount:Number = 0;
    public var survivalCount:Number = 0;
    public var winAndSurvived:Number = 0;
    public var shotsCount:Number = 0;
    public var hitsCount:Number = 0;
    public var maxXP:Number = 0;
    public var maxXPVehicleName:String = "";
    public var maxFrags:Number = 0;
    public var maxFragsVehicleName:String = "";
    public var fragsCount:Number = 0;
    public var fragsEfficiency:Number = 0;
    public var deathsCount:Number = 0;
    public var damageDealt:Number = 0;
    public var damageReceived:Number = 0;
    public var damageEfficiency:Number = 0;
    public var avgXP:Number = 0;
    public var avgFrags:Number = 0;
    public var avgEnemiesSpotted:Number = 0;
    public var avgDamageDealt:Number = 0;
    public var avgDamageReceived:Number = 0;

    // calculated
    public var drawsCount:Number = 0;
    public var winPercent:Number = 0;
    public var lossPercent:Number = 0;
    public var drawsPercent:Number = 0;
    public var survivePercent:Number = 0;
    public var hitsRatio:Number = 0;
    public var winsToNextPercentStr:String = "";

    // stat
    public var stat:StatData = null;
}
