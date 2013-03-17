class net.wargaming.managers.ContextMenuManager
{
    var hitTest;
    static var __get__instance;
    /*function ContextMenuManager()
    {
        _global.gfxExtensions = true;
    } // End of the function
    static function get instance()
    {
        if (net.wargaming.managers.ContextMenuManager._instance == null)
        {
            _instance = new net.wargaming.managers.ContextMenuManager();
        } // end if
        return (net.wargaming.managers.ContextMenuManager._instance);
    } // End of the function
    function show(menuGroupName, noAnim, data)
    {
        this.hide();
        _menu = gfx.managers.PopUpManager.createPopUp(_root, "ContextMenu", {});
        if (_menu)
        {
            _menu.show(_xmouse, _ymouse, menuGroupName, noAnim, data);
            _menu.onMouseDown = function (args)
            {
                if (this.hitTest(_root._xmouse, _root._ymouse, true))
                {
                    return;
                } // end if
                net.wargaming.managers.ContextMenuManager.__get__instance().hide();
            };
        } // end if
        return (_menu);
    } // End of the function
    function hide()
    {
        if (_menu != null)
        {
            _menu.hide();
            _menu.removeMovieClip();
            delete this._menu;
        } // end if
    }
	*/
    static var _instance = null;
    var _menu = null;
} // End of Class
