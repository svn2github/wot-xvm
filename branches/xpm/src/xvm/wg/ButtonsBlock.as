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
    import net.wg.gui.lobby.header.*;
    
    public dynamic class ButtonsBlock extends net.wg.gui.lobby.header.MainMenu
    {
        public function ButtonsBlock()
        {
            super();
            this.__setProp_bar_headerButtons_Layer1_0();
            return;
        }

        internal function __setProp_bar_headerButtons_Layer1_0():*
        {
            var loc1:*;
            try 
            {
                bar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            bar.autoSize = "left";
            bar.buttonWidth = 0;
            bar.direction = "horizontal";
            bar.enabled = true;
            bar.enableInitCallback = false;
            bar.focusable = true;
            bar.itemRendererName = "MainMenuButton";
            bar.paddingBottom = -1;
            bar.paddingLeft = 15;
            bar.paddingRight = 15;
            bar.paddingTop = 2;
            bar.spacing = 10;
            bar.visible = true;
            try 
            {
                bar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
