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
    import net.wg.gui.lobby.techtree.*;
    
    public dynamic class TechTreeUI extends net.wg.gui.lobby.techtree.TechTreePage
    {
        public function TechTreeUI()
        {
            super();
            this.__setProp_nationTree_TechTreeUI_nationTree_0();
            this.__setProp_nationsBar_TechTreeUI_nationsBar_0();
            return;
        }

        internal function __setProp_nationTree_TechTreeUI_nationTree_0():*
        {
            try 
            {
                nationTree["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nationTree.containerHeight = 610;
            nationTree.enabled = true;
            nationTree.enableInitCallback = false;
            nationTree.nodeHeight = 56;
            nationTree.nodeWidth = 132;
            nationTree.scrollBarBottomOffset = 4;
            nationTree.scrollBarRightOffset = 9;
            nationTree.scrollStepFactor = 64;
            nationTree.visible = true;
            try 
            {
                nationTree["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nationsBar_TechTreeUI_nationsBar_0():*
        {
            try 
            {
                nationsBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nationsBar.autoSize = "none";
            nationsBar.buttonWidth = 98;
            nationsBar.direction = "vertical";
            nationsBar.enabled = true;
            nationsBar.enableInitCallback = false;
            nationsBar.focusable = true;
            nationsBar.itemRendererName = "NationButtonSkinned";
            nationsBar.spacing = 5;
            nationsBar.tabVAlign = "center";
            nationsBar.visible = true;
            try 
            {
                nationsBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
