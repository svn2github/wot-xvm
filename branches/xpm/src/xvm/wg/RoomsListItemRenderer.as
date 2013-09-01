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
    import net.wg.gui.lobby.training.*;
    
    public dynamic class RoomsListItemRenderer extends net.wg.gui.lobby.training.TrainingListItemRenderer
    {
        public function RoomsListItemRenderer()
        {
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 48, this.frame49, 58, this.frame59);
            this.__setProp_textOwner_RoomsListItemRenderer_iconbg();
            this.__setProp_iconLoader_RoomsListItemRenderer_iconLoader_0();
            return;
        }

        internal function __setProp_textOwner_RoomsListItemRenderer_iconbg():*
        {
            try 
            {
                textOwner["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            textOwner.enabled = true;
            textOwner.label = "text";
            textOwner.shadowColor = "Black";
            textOwner.textAlign = "left";
            textOwner.textColor = 15329754;
            textOwner.textFont = "$FieldFont";
            textOwner.textSize = 16;
            textOwner.useHtml = false;
            textOwner.visible = true;
            try 
            {
                textOwner["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_iconLoader_RoomsListItemRenderer_iconLoader_0():*
        {
            try 
            {
                iconLoader["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            iconLoader.autoSize = true;
            iconLoader.enableInitCallback = false;
            iconLoader.maintainAspectRatio = false;
            iconLoader.source = "";
            iconLoader.sourceAlt = "";
            iconLoader.visible = true;
            try 
            {
                iconLoader["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }

        internal function frame20():*
        {
            stop();
            return;
        }

        internal function frame30():*
        {
            stop();
            return;
        }

        internal function frame40():*
        {
            stop();
            return;
        }

        internal function frame49():*
        {
            stop();
            return;
        }

        internal function frame59():*
        {
            stop();
            return;
        }
    }
}
