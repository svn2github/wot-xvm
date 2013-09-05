/**
 * @author LEMAXHO
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar.components.Crew
{
    import flash.display.*;
    import flash.events.MouseEvent;
    import net.wg.data.components.*;
    import net.wg.gui.events.ContextMenuEvent;
    import net.wg.gui.lobby.hangar.*;
    import net.wg.gui.lobby.hangar.crew.*;
    import net.wg.utils.*;
    import net.wg.infrastructure.interfaces.*;
    import net.wg.data.VO.SeparateItem;
    import com.xvm.*;
    import com.xvm.utils.*;
    import com.xvm.l10n.Locale;

    public class CrewLoader extends Sprite
    {
        private static var _instance:CrewLoader = null;
        private static function get instance():CrewLoader
        {
            if (_instance == null)
                _instance = new CrewLoader();
            return _instance;
        }

        public static function init(page:Hangar):void
        {
            instance.page = page;
            page.crew.addEventListener(MouseEvent.CLICK, instance.handleMouseRelease, false, 0, true);
        }

        // PRIVATE

        private var page:Hangar;

        function CrewLoader():void
        {
            page = null;
        }

        private function handleMouseRelease(e:MouseEvent):void
        {
return;
            var item:CrewItemRenderer = e.target as CrewItemRenderer;
            if (item == null)
                return;
            var renderer:RecruitRendererVO = RecruitRendererVO(item.data);

            if (App.utils.commons.isRightButton(e))
            {
                if (!renderer.tankmanID && item.enabled)
                {
                    App.contextMenuMgr.show(Vector.<IContextItem>([
                        new ContextItem("PutOwnCrew", Locale.get("PutOwnCrew")),
                        new SeparateItem(),
                        new ContextItem("PutBestCrew", Locale.get("PutBestCrew"))]),
                        this, this.onContextMenuAction, page.crew);
                }
            }
        }

/*        function setTankmenImpl(data)
        {
            base.setTankmen(data);
            //com.xvm.Logger.addObject(wrapper.list, "list", 2);
            CrewLoader.s_defaultCrew = wrapper.list._dataProvider; // save the crewlist
        }*/

        private function onContextMenuAction(e:ContextMenuEvent):void
        {
            //Logger.addObject(e);
            var crew:Crew = e.memberItemData as Crew;
            Logger.addObject(crew);

            switch (e.id)
            {
                case "PutOwnCrew":
                    //LoadCrew(GetCrew(CheckOwn));
                    break;

                case "PutBestCrew":
                    //LoadCrew(GetCrew(CheckBest));
                    break;
            }
        }

        private function LoadCrew(crew:Vector.<Object>):void
        {
            var len:int = crew.length;
            for (var i:int = 0; i < crew.length; ++i)
            {
                var t:Object = crew[i];
                //if (t["compact"] != "")
                //    gfx.io.GameDelegate.call("tankmen.equipTankman", [t["compact"], null, t["slot"]]);
            }
        }

        /*private function GetCrew(checkFunc:Function):Vector.<Object>
        {
            var tnkObj:Object = s_defaultCrew[0];
            var tankmanList = new Array();

            for (var index:Object in s_defaultCrew)
            {
                var slot = s_defaultCrew[index];
                if (slot["inTank"] == true)
                    continue;

                var mostSuitable = null;
                var theRecruits = slot["recruitList"];
                for (var y in theRecruits)
                {
                    var tankMan = theRecruits[y];
                    if (tankMan["compact"] == null || tankMan["inTank"] == true || TankmanInArray(tankmanList, tankMan))
                        continue;
                    if (!checkFunc(tankMan, mostSuitable, tnkObj))
                        continue;
                    mostSuitable = tankMan;
                }
                if (mostSuitable != null)
                {
                    mostSuitable["slot"] = slot["slot"];
                    tankmanList.push(mostSuitable);
                }
            }
            return tankmanList;
        }

        private function CheckOwn(actualTankman:Object, bestTankman:Object, theTank:Object)
        {
            if (actualTankman["vehicleType"] != s_defaultCrew[0]["curVehicleName"])
                return false;
            return CheckBest(actualTankman, bestTankman, theTank);
        }
*/
        /**
         * Compares two tankman
         * @param actualTankman current candidate
         * @param bestTankman current best candidate
         * @param theTank
         * @return
         */
        private function CheckBest(actualTankman:Object, bestTankman:Object, theTank:Object):Boolean
        {
            // No bestTankman : select first tankman met
            if (bestTankman == null)
                return true;

            var current = getPenality(actualTankman, theTank);
            var best = getPenality(bestTankman, theTank);

            // CASE 1 : bestTankman is better than actual
            // conserve the bestTankman
            if (best > current)
                return false;

            // CASE 3 : actual tankman is better than bestTankman
            // select the actualTankman
            if (best < current)
                return true;

            // CASE 2 : bestTankman's capacity is equal with the actualTankman's skill
            // Need deeper analysis

            //CASE 2.1 : bestTankman has more skills than actualTankman
            //conserve the bestTankman
            if (bestTankman["skills"].length > actualTankman["skills"].length)
                return false;

            //CASE 2.2 : bestTankman has less skills than actualTankman
            //select the actualTankman
            if (bestTankman["skills"].length < actualTankman["skills"].length)
                return true;

            //CASE 2.3 : bestTankman has the same number of skills that the actualTankman
            //if the bestTankman's lastskilllevel is < that actualTankman's
            //select the actualTankman
            if (bestTankman["lastSkillLevel"] < actualTankman["lastSkillLevel"])
                return true;

            return false;
        }

        /**
         * skill tankman penality
         * @param aTankman
         * @param dummyTankman current tank's
         * @return Tankman's efficiencyLevel - penality
         */
        private function getPenality(tankman:Object, dummyTankman:Object)
        {
            var res = 1;

            if (tankman["vehicleType"] == dummyTankman["curVehicleName"])
                res = 1;
            else
            {
                if (tankman["tankType"] == dummyTankman["curVehicleType"])
                {
                    // 25% penalty same tanktype but tank is different
                    res = (dummyTankman["vehicleElite"] == true) ? 1 : 0.75;
                }
                else
                {
                    // 50% penalty different tanktype
                    res = 0.5;
                }
            }
            return tankman["efficiencyLevel"] * res;
        }

        private function TankmanInArray(list:Array, elem:Object):Boolean
        {
            for (var i = 0; i < list.length; ++i)
            {
                if (list[i]["tankmanID"] == elem["tankmanID"])
                    return true;
            }
            return false;
        }
    }
}
