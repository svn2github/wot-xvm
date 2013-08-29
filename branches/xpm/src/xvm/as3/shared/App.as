package
{
    import flash.display.*;
    import net.wg.app.*;
    import net.wg.data.constants.*;
    import net.wg.infrastructure.base.meta.*;
    import net.wg.infrastructure.interfaces.*;
    import net.wg.infrastructure.managers.*;
    import net.wg.utils.*;

    public class App extends Object
    {
        //native public static function set instance(arg1:net.wg.app.IApplication);
        native public static function get instance():net.wg.app.IApplication;
        native public static function get globalVarsMgr():net.wg.infrastructure.base.meta.IGlobalVarsMgrMeta;
        native public static function get soundMgr():net.wg.infrastructure.managers.ISoundManager;
        native public static function get toolTipMgr():net.wg.infrastructure.managers.ITooltipMgr;
        native public static function get waiting():net.wg.infrastructure.managers.IWaitingView;
        native public static function get environment():net.wg.infrastructure.managers.IEnvironmentManager;
        native public static function get contextMenuMgr():net.wg.infrastructure.managers.IContextMenuManager;
        native public static function get colorSchemeMgr():net.wg.infrastructure.managers.IColorSchemeManager;
        native public static function get itemsMgr():net.wg.infrastructure.managers.IGuiItemsManager;
        native public static function get voiceChatMgr():net.wg.infrastructure.managers.IVoiceChatManager;
        native public static function get utils():net.wg.utils.IUtils;
        native public static function get cursor():net.wg.infrastructure.interfaces.ICursor;
        native public static function get containerMgr():net.wg.infrastructure.managers.IContainerManager;
        native public static function get gameInputMgr():net.wg.utils.IGameInputManager;
        native public static function get appWidth():Number;
        native public static function get appHeight():Number;
        native public static function get helpLayout():net.wg.utils.IHelpLayout;
        native public static function get stage():flash.display.Stage;
        native public static function get browserBgClass():Class;
        native public static function get systemMessages():flash.display.DisplayObjectContainer;
    }
}
