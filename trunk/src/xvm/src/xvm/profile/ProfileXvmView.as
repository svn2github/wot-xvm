/**
 * XVM - user info
 * @author Maxim Schedriviy "m.schedriviy(at)gmail.com"
 */
package xvm.profile
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;
    import com.xvm.misc.*;
    import com.xvm.utils.*;
    import flash.events.*;
    import flash.utils.*;
    import net.wg.gui.components.windows.*;
    import net.wg.gui.events.*;
    import net.wg.gui.lobby.profile.*;
    import net.wg.gui.lobby.profile.components.*;
    import net.wg.gui.lobby.profile.data.SectionLayoutManager;
    import net.wg.gui.lobby.profile.pages.awards.ProfileAwards;
    import net.wg.gui.lobby.profile.pages.technique.*;
    import net.wg.gui.lobby.window.*;
    import net.wg.infrastructure.events.*;
    import net.wg.infrastructure.interfaces.*;
    import scaleform.clik.events.*;
    import xvm.profile.components.*;

    public class ProfileXvmView extends XvmViewBase
    {
        private const WINDOW_EXTRA_WIDTH:int = 45;
        private const WINDOW_EXTRA_HEIGHT:int = 35;

        public function ProfileXvmView(view:IView)
        {
            //Logger.add("ProfileXvmView");
            super(view);
        }

        public function get tabNavigator():ProfileTabNavigator
        {
            var profile:Profile = view as Profile;
            if (profile != null)
                return profile.tabNavigator;
            var profileWindow:ProfileWindow = view as ProfileWindow;
            if (profileWindow != null)
                return profileWindow.tabNavigator;
            return null;
        }

        public override function onBeforePopulate(e:LifeCycleEvent):void
        {
            /*
            try
            {
                // resize window
                var pw:ProfileWindow = view as ProfileWindow;
                if (pw != null)
                {
                    if (Config.config.userInfo.showExtraDataInProfile)
                    {
                        pw.btnAddToFriends.y += WINDOW_EXTRA_HEIGHT;
                        pw.btnAddToIgnore.y += WINDOW_EXTRA_HEIGHT;
                        pw.btnCreatePrivateChannel.y += WINDOW_EXTRA_HEIGHT;
                        pw.background.width += WINDOW_EXTRA_WIDTH;
                        pw.background.height += WINDOW_EXTRA_HEIGHT;
                        pw.setSize(pw.width + WINDOW_EXTRA_WIDTH, pw.height + WINDOW_EXTRA_HEIGHT);
                        App.utils.scheduler.envokeInNextFrame(function():void
                        {
                            var co:int = ProfileConstants.WINDOW_CENTER_OFFSET + WINDOW_EXTRA_WIDTH / 2;
                            pw.tabNavigator.centerOffset = co;
                            var sw:ProfileSummaryWindow = pw.tabNavigator.viewStack.currentView as ProfileSummaryWindow;
                            if (sw != null)
                                sw.centerOffset = co;
                        });
                    }
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
            */
        }

        public override function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                init();
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        // PRIVATE

        private function init():void
        {
            tabNavigator.addEventListener(LifeCycleEvent.ON_AFTER_POPULATE, tabNavigator_onAfterPopulate);
            tabNavigator.viewStack.addEventListener(ViewStackEvent.VIEW_CHANGED, viewStack_ViewShowed);
        }

        private function tabNavigator_onAfterPopulate():void
        {
            //Logger.add("tabNavigator_onAfterPopulate");
            tabNavigator.removeEventListener(LifeCycleEvent.ON_AFTER_POPULATE, tabNavigator_onAfterPopulate);

            try
            {
                //Logger.addObject(tabNavigator.initData, 3);
                // initialize start page
                var alias:String = tabNavigator.initData.selectedAlias;
                if (alias == "profileSummaryPage" || alias == "")
                {
                    var index:int = Config.config.userInfo.startPage - 1;
                    if (index > 0 && index < tabNavigator.initData.sectionsData.length)
                        tabNavigator.initData.selectedAlias = tabNavigator.initData.sectionsData[index].alias;
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function viewStack_ViewShowed(e:ViewStackEvent):void
        {
            //Logger.add("viewStack_ViewShowed: " + e.view);

            try
            {
                var page:ProfileTechniquePage = e.view as ProfileTechniquePage;
                if (page != null)
                {
                    if (page.getChildByName("xvm_extension") == null)
                    {
                        page.listComponent.techniqueList.rowHeight = 32;

                        var tp:TechniquePage = new TechniquePage(page, Globals[Globals.NAME]);
                        page.addChild(tp);
                    }
                    return;
                }

                var window:ProfileTechniqueWindow = e.view as ProfileTechniqueWindow;
                if (window != null)
                {
                    if (window.getChildByName("xvm_extension") == null)
                    {
                        window.listComponent.techniqueList.rowHeight = 32;

                        // get player name from window title
                        var playerName:String = WGUtils.GetPlayerName(((view as ProfileWindow).window as Window).title);

                        // get player id from the view name.
                        var playerId:int = parseInt(view.as_name.replace("window_", ""));

                        var tw:TechniqueWindow = new TechniqueWindow(window, playerName, playerId);
                        window.addChild(tw);
                    }
                    return;
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }
    }
}
