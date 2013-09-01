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
    import net.wg.gui.lobby.tankman.*;
    
    public dynamic class TankmanSkillsInfoBlock extends net.wg.gui.lobby.tankman.TankmanSkillsInfoBlock
    {
        public function TankmanSkillsInfoBlock()
        {
            super();
            this.__setProp_specLevelBar_TankmanSkillsInfoBlock_specLevelBar_0();
            return;
        }

        internal function __setProp_specLevelBar_TankmanSkillsInfoBlock_specLevelBar_0():*
        {
            try 
            {
                specLevelBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            specLevelBar.visible = true;
            specLevelBar.frontPosition = 0;
            specLevelBar.backPosition = 0;
            specLevelBar.minimum = 0;
            specLevelBar.maximum = 100;
            try 
            {
                specLevelBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
