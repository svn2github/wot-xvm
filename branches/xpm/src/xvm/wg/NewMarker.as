package 
{
    import flash.display.*;
    import flash.text.*;
    
    public dynamic class NewMarker extends flash.display.MovieClip
    {
        public function NewMarker()
        {
            super();
            addFrameScript(0, this.frame1);
            return;
        }

        internal function frame1():*
        {
            this.newField.text = "#menu:customization/marker/camouflage/new";
            return;
        }

        public var newField:flash.text.TextField;
    }
}
