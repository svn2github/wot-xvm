package 
{
    import flash.display.*;
    import flash.events.*;
    import flash.geom.*;
    import flash.text.*;
    
    internal class CStatusWindowKr extends flash.display.MovieClip
    {
        public function CStatusWindowKr(arg1:flash.display.MovieClip=null)
        {
            BGColor = 14608366;
            BGColorOnover = 5619932;
            TextColor = 5592921;
            TextColorSelected = 16777215;
            toggleSymbol = false;
            toggleShape = false;
            toggleInputMode = false;
            parent_mc = arg1;
            if (arg1 != null) 
            {
                arg1.Controller = this;
            }
            mouseChildren = false;
            addEventListener(MouseEvent.MOUSE_OVER, OnRollOver, false);
            addEventListener(MouseEvent.MOUSE_OUT, OnRollOut, false);
            addEventListener(MouseEvent.CLICK, OnClick);
            super();
            return;
        }

        public function OnRollOver(arg1:flash.events.MouseEvent):*
        {
            if (currentFrame == 1) 
            {
                gotoAndPlay(2);
            }
            if (currentFrame == 3) 
            {
                gotoAndPlay(4);
            }
            return;
        }

        public function SetTextColor(arg1:Number, arg2:Number):void
        {
            TextColor = arg1;
            TextColorSelected = arg2;
            if (currentFrame != 1) 
            {
            };
            return;
        }

        public function DisplayStatusWindow(arg1:Number, arg2:Number, arg3:Number, arg4:Number):void
        {
            SetBackgroundColor(arg1, arg2);
            SetTextColor(arg3, arg4);
            if (currentFrame != 1) 
            {
                gotoAndPlay(1);
            }
            return;
        }

        public function SetSymbolMode(arg1:String):*
        {
            if (arg1 == "full") 
            {
                toggleSymbol = false;
                if (currentFrame != 3) 
                {
                    gotoAndPlay(3);
                }
            }
            if (arg1 == "half") 
            {
                toggleSymbol = true;
                if (currentFrame != 1) 
                {
                    gotoAndPlay(1);
                }
            }
            return;
        }

        public function Hide():void
        {
            if (currentFrame != 2) 
            {
                gotoAndPlay("empty");
            }
            return;
        }

        internal function SelectItem(arg1:String):*
        {
            if (arg1 == "Shape_mc") 
            {
                IMEEx.SendLangBarMessage(this, "StatusWindow_OnShape", toggleShape != true ? "false" : "true");
            }
            if (arg1 == "InputMode_mc") 
            {
                IMEEx.SendLangBarMessage(this, "StatusWindow_OnInputMode", toggleInputMode != true ? "false" : "true");
            }
            if (arg1 == "Symbol_mc") 
            {
                IMEEx.SendLangBarMessage(this, "StatusWindow_OnSymbol", toggleSymbol != true ? "false" : "true");
            }
            return;
        }

        public function SetInputMode(arg1:String):*
        {
            if (arg1 == "Native") 
            {
                toggleInputMode = false;
                if (currentFrame != 1) 
                {
                    gotoAndPlay(1);
                }
            }
            if (arg1 == "Alphanumeric") 
            {
                toggleInputMode = true;
                if (currentFrame != 3) 
                {
                    gotoAndPlay(3);
                }
            }
            return;
        }

        public function SetBackgroundColor(arg1:Number, arg2:Number):void
        {
            BGColorOnover = arg2;
            BGColor = arg1;
            if (currentFrame != 1) 
            {
            };
            return;
        }

        public function SetShapeMode(arg1:String):*
        {
            if (arg1 == "full") 
            {
                toggleShape = false;
                if (currentFrame != 3) 
                {
                    gotoAndPlay(3);
                }
            }
            if (arg1 == "half") 
            {
                toggleShape = true;
                if (currentFrame != 1) 
                {
                    gotoAndPlay(1);
                }
            }
            return;
        }

        public function OnClick(arg1:flash.events.MouseEvent):*
        {
            SelectItem(name);
            return;
        }

        public function ChangeBackgroundColor(arg1:Number):*
        {
            var loc1:*=NaN;
            var loc2:*=NaN;
            var loc3:*=NaN;
            var loc4:*=NaN;
            var loc5:*=NaN;
            var loc6:*=null;
            var loc7:*=null;
            var loc8:*=null;
            loc1 = BGColor;
            loc2 = ((loc1 & 16711680) >> 16) / 1.2 < 1 ? 1 : ((loc1 & 16711680) >> 16) / 1.2;
            loc3 = ((loc1 & 65280) >> 8) / 1.2 < 1 ? 1 : ((loc1 & 65280) >> 8) / 1.2;
            loc4 = (loc1 & 255) / 1.2 < 1 ? 1 : (loc1 & 255) / 1.2;
            inputModeBorder.transform.colorTransform = new ColorTransform(0, 0, 0, 1, loc2, loc3, loc4, 0);
            if (name.indexOf("Input") != -1) 
            {
                if (arg1 == 1 || arg1 == 2) 
                {
                    loc6 = inputIcon1;
                }
                if (arg1 == 3 || arg1 == 4) 
                {
                    loc6 = inputIcon2;
                }
                if (arg1 == 1 || arg1 == 3) 
                {
                    inputModeBG.transform.colorTransform = new ColorTransform(0, 0, 0, 1, (BGColor & 16711680) >> 16, (BGColor & 65280) >> 8, BGColor & 255, 0);
                    loc6.transform.colorTransform = new ColorTransform(0, 0, 0, 1, (TextColor & 16711680) >> 16, (TextColor & 65280) >> 8, TextColor & 255, 0);
                }
                if (arg1 == 2 || arg1 == 4) 
                {
                    inputModeBG.transform.colorTransform = new ColorTransform(0, 0, 0, 1, (BGColorOnover & 16711680) >> 16, (BGColorOnover & 65280) >> 8, BGColorOnover & 255, 0);
                    loc6.transform.colorTransform = new ColorTransform(0, 0, 0, 1, (TextColorSelected & 16711680) >> 16, (TextColorSelected & 65280) >> 8, TextColorSelected & 255, 0);
                }
            }
            return;
        }

        public function OnRollOut(arg1:flash.events.MouseEvent):*
        {
            if (currentFrame == 2) 
            {
                gotoAndPlay(1);
            }
            if (currentFrame == 4) 
            {
                gotoAndPlay(3);
            }
            return;
        }

        public var toggleSymbol:Boolean;

        public var BGColor:Number=14608366;

        public var TextColor:Number=5592921;

        public var inputIcon1:flash.display.MovieClip;

        public var inputModeBorder:flash.display.MovieClip;

        public var inputIcon2:flash.display.MovieClip;

        public var symbolIcon1:flash.display.MovieClip;

        public var symbolIcon2:flash.display.MovieClip;

        public var parent_mc:flash.display.MovieClip;

        public var tf:flash.text.TextField;

        public var toggleInputMode:Boolean;

        public var inputModeBG:flash.display.MovieClip;

        public var shapeBG:flash.display.MovieClip;

        public var toggleShape:Boolean;

        public var shapeIcon1:flash.display.MovieClip;

        public var shapeIcon2:flash.display.MovieClip;

        public var TextColorSelected:Number=16777215;

        public var symbolBG:flash.display.MovieClip;

        public var BGColorOnover:Number=5619932;
    }
}
