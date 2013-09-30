/**
* ...
* @author STL1te
*/
package components 
{
    import com.xvm.utils.Utils;
    import flash.display.Bitmap;
    import flash.display.BlendMode;
    import flash.display.Loader;
    import flash.geom.Rectangle;
    import com.xvm.*;
    import net.wg.gui.events.UILoaderEvent;

    public class ImageCheckBoxItemRenderer extends ListItemRedererImageText
    {               
        public var checkBox:CheckBox;
        
        public function ImageCheckBoxItemRenderer() 
        {
            super();
            this.icon.autoSize = false;
        }
        
        override protected function configUI():void
        {
            super.configUI();
            this.checkBox = this.addChildAt(new CheckBox(), 5) as CheckBox;
            this.checkBox.label = "";
            this.checkBox.x = 45;
            this.checkBox.setActualSize(40, 20);
            this.width = 148;
            this.parent.scrollRect = new Rectangle(0, 0, 93, 220);
        }
        
        override protected function draw():void
        {
            super.draw();
            this.checkBox.selected = this.selected = this.data.selected;
            return;
        }
        
        override protected function completeLoadA(event:UILoaderEvent):void
        {
            super.completeLoadA(event);
            var loader:* = this.icon.getChildAt(1);
            var iconWidth:Number = loader.content.width >> 1;
            this.icon.x = int(this.ico_border.x + (this.ico_border.width >> 1) - iconWidth);
        }
    }

}