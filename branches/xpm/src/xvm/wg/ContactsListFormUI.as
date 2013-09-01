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
    import net.wg.gui.messenger.forms.*;
    
    public dynamic class ContactsListFormUI extends net.wg.gui.messenger.forms.ContactsListForm
    {
        public function ContactsListFormUI()
        {
            super();
            this.__setProp_accordion_ContactsListForm_Layer4_0();
            return;
        }

        internal function __setProp_accordion_ContactsListForm_Layer4_0():*
        {
            var loc1:*;
            try 
            {
                accordion["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            accordion.backgroundType = "brown";
            accordion.enabled = true;
            accordion.enableHeaderConstraints = true;
            accordion.enableInitCallback = false;
            accordion.focusable = true;
            accordion.itemRendererName = "AccordionHeaderUI";
            accordion.margin = 1;
            accordion.paddingBottom = 1;
            accordion.paddingLeft = 0;
            accordion.paddingTop = 1;
            accordion.rowHeight = 20;
            accordion.showBackground = true;
            accordion.visible = true;
            try 
            {
                accordion["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
