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
    
    public dynamic class ResearchUI extends net.wg.gui.lobby.techtree.ResearchPage
    {
        public function ResearchUI()
        {
            super();
            this.__setProp_researchItems_ResearchUI_researchItems_0();
            return;
        }

        internal function __setProp_researchItems_ResearchUI_researchItems_0():*
        {
            try 
            {
                researchItems["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            researchItems.enabled = true;
            researchItems.enableInitCallback = false;
            researchItems.fakeNodeName = "FakeItemNode";
            researchItems.itemNodeName = "ResearchItemNode";
            researchItems.maxNodesOnLevel = 6;
            researchItems.nextLevelX = 882;
            researchItems.titleDefaultY = 21;
            researchItems.topLevelX = 10;
            researchItems.vehicleNodeName = "NationTreeNodeSkinned";
            researchItems.visible = true;
            researchItems.xRatio = 40;
            researchItems.yRatio = 94;
            try 
            {
                researchItems["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
