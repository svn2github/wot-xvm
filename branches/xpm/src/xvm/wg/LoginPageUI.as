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
    import net.wg.gui.login.impl.*;
    
    public dynamic class LoginPageUI extends net.wg.gui.login.impl.LoginPage
    {
        public function LoginPageUI()
        {
            super();
            this.__setProp_bg_image_LoginPage_bg_0();
            return;
        }

        internal function __setProp_bg_image_LoginPage_bg_0():*
        {
            try 
            {
                bg_image["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            bg_image.autoSize = false;
            bg_image.enableInitCallback = false;
            bg_image.maintainAspectRatio = false;
            bg_image.source = "";
            bg_image.sourceAlt = "";
            bg_image.visible = true;
            try 
            {
                bg_image["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
