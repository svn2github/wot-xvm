package 
{
    import adobe.utils.*;
    import flash.accessibility.*;
    import flash.desktop.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.globalization.*;
    import flash.media.*;
    import flash.net.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.system.*;
    import flash.text.*;
    import flash.text.engine.*;
    import flash.text.ime.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
    import net.wg.gui.lobby.*;
    
    public dynamic class LobbyPage_UI extends net.wg.gui.lobby.LobbyPage
    {
        public function LobbyPage_UI()
        {
            super();
            this.__setProp_messengerBar_LobbyPage_UI_messengerBar_0();
            return;
        }

        internal function __setProp_messengerBar_LobbyPage_UI_messengerBar_0():*
        {
            var loc1:*;
            try 
            {
                messengerBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            messengerBar.enabled = true;
            messengerBar.enableInitCallback = false;
            messengerBar.paddingBottom = 0;
            messengerBar.paddingLeft = 8;
            messengerBar.paddingRight = 7;
            messengerBar.visible = true;
            try 
            {
                messengerBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
