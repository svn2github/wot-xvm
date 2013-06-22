import wot.Minimap.*;
import wot.Minimap.model.externalProxy.*;
import com.xvm.Logger;

/**
 * Handles minimap windows zoom and center positioning
 * by key pressing
 */
class wot.Minimap.view.Zoom
{
    /** This is the subject of resize reposition */
    private var minimap:Minimap;

    /** Temporary place to store last normal map size value before resize procedure by zoom */
    private var prevSizeIndex:Number;

    /** Stores state for switcher */
    var currentState:Boolean;

    /**
     * #################
     * TODO: fix messages at right side while zoomed
     */
    
    public function Zoom()
    {
        if (MapConfig.zoomEnabled)
        {
            init();
        }
    }

    public function onZoomKeyClick(event):Void
    {
        if (!userIsUsingChat)
        {
            /**
             * Zoom while key is on hold
             * or switch zoom when key is clicked
             */
            var isZoomKeyDown:Boolean = event.details.value == "keyDown";
            if (MapConfig.zoomHold)
            {
                holdBehaviour(isZoomKeyDown);
            }
            else if (isZoomKeyDown)
            {
                switchBehaviour();
            }
        }
    }

    // -- Private
    
    private function init():Void
    {
        var key:Number = MapConfig.zoomKey;
        net.wargaming.managers.BattleInputHandler.instance.addHandler(key, false, this, "onZoomKeyClick");
        net.wargaming.managers.BattleInputHandler.instance.addHandler(key, true, this, "onZoomKeyClick");
        
        currentState = true;
    }

    private function holdBehaviour(isZoomKeyDown:Boolean):Void
    {
        if (isZoomKeyDown)
        {
            zoomIn();
        }
        else
        {
            zoomOut();
        }
    }

    private function switchBehaviour():Void
    {
        if (currentState)
        {
            zoomIn();
            currentState = !currentState;
        }
        else
        {
            zoomOut();
            currentState = !currentState;
        }
    }

    private function zoomIn():Void
    {
        increaseSize();
        if (MapConfig.zoomCentered)
        {
            centerPosition();
        }
    }

    private function zoomOut():Void
    {
        bottomRightPosition();
        restoreSize();
    }

    private function centerPosition():Void
    {
        /** Position map bottom right corner at center */
        minimap._x = Stage.width / 2;
        minimap._y = Stage.height / 2;

        /** Offset position taking map center into account */
        minimap._x += minimap.width / 2;
        minimap._y += minimap.height / 2;
    }

    private function bottomRightPosition():Void
    {
        /** Position map bottom right corner at bottom right of Stage */
        minimap._x = Stage.width;
        minimap._y = Stage.height;
    }

    private function increaseSize():Void
    {
        var side:Number = Stage.height - MapConfig.zoomPixelsBack;
        minimap.setSize(side, side);
    }

    private function restoreSize():Void
    {
        minimap.setupSize(minimap.m_sizeIndex, Stage.height);
    }
    
    private function get userIsUsingChat():Boolean
    {
        var ret:Boolean = _root.messenger.messageInput._focused;
        if (ret == null)
        {
            Logger.add("## ERROR wot.Minimap.view.Zoom: _root.messenger.messageInput._focused == null");
        }
        
        return ret;
    }
    
    private function get minimap()
    {
        return MinimapProxy.wrapper;
    }
}
