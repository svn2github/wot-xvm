/**
 * 
 * @author LEMAXHO
 */

//FOR SUISEISEKI

class wot.crew.tankmen.RecruitItemRenderer extends net.wargaming.tankmen.RecruitItemRenderer
{
	
    function RecruitItemRenderer()
    {
        super();
    }
	
	//
	function putTankman(args)
    {
        gfx.io.GameDelegate.call("tankmen.equipTankman", [data.compact, null, data.slot]);
    }
	
    function showTooltip(args)
    {
        if (owner._visible)
        {
            net.wargaming.managers.ToolTipManager.__get__instance().showTankman(data.tankmanID, true);
        } // end if
    }
	
    function hideTooltip(args)
    {
        net.wargaming.managers.ToolTipManager.__get__instance().hide();
    } // End of the function
    function onItemClick(args)
    {
        if (_recruit == true)
        {
            gfx.io.GameDelegate.addCallBack("tankmen.showRecruit", this, "onShowRecruitWindow");
            gfx.io.GameDelegate.call("tankmen.showRecruitWindow", []);
        }
        else
        {
            if (data.tankmanID == data.parentTankmanID)
            {
                return;
            } // end if
            var _loc3 = data.tankmanID;
            var _loc2 = net.wargaming.managers.WindowManager.__get__instance().getWindow(_loc3);
            if (_loc2 != undefined)
            {
                _loc2.handleClose();
            } // end if
            if (data.tankmanID == data.parentTankmanID)
            {
            }
            else
            {
                gfx.io.GameDelegate.call("tankmen.equipTankman", [data.compact, null, data.slot]);
            }
        }
    }
	
	
    function toString()
    {
        return ("[Scaleform RecruitItemRenderer " + _name + "]");
    }
	
} 
