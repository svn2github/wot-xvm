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
    
    public dynamic class PlayerElement extends net.wg.gui.lobby.training.PlayerElement
    {
        public function PlayerElement()
        {
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 49, this.frame50);
            this.__setProp_nameField_PlayerElement_textFields_0();
            this.__setProp_iconLoader_PlayerElement_iconLoader_0();
            return;
        }

        internal function __setProp_nameField_PlayerElement_textFields_0():*
        {
            try 
            {
                nameField["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nameField.enabled = true;
            nameField.label = "";
            nameField.shadowColor = "Black";
            nameField.textAlign = "left";
            nameField.textColor = 12105895;
            nameField.textFont = "$FieldFont";
            nameField.textSize = 14;
            nameField.useHtml = false;
            nameField.visible = true;
            try 
            {
                nameField["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_iconLoader_PlayerElement_iconLoader_0():*
        {
            try 
            {
                iconLoader["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            iconLoader.autoSize = false;
            iconLoader.enableInitCallback = false;
            iconLoader.maintainAspectRatio = true;
            iconLoader.source = "";
            iconLoader.sourceAlt = "../maps/icons/vehicle/contour/noImage.png";
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

        internal function frame50():*
        {
            stop();
            return;
        }
    }
}
