class net.wargaming.controls.ContextMenu extends gfx.core.UIComponent
{
    var _x, _y, getNextHighestDepth, bg_mc, _height, _width, dispatchEvent, _name;
    /*function ContextMenu()
    {
        super();
    } // End of the function
    function configUI()
    {
        super.configUI();
        function onKeyDown()
        {
            if (Key.getCode() == 27)
            {
                net.wargaming.managers.ContextMenuManager.__get__instance().hide();
            } // end if
        } // End of the function
        Mouse.addListener(this);
        Key.addListener(this);
    } // End of the function
    function show(x, y, menuIn, noAnim, data)
    {
        _x = x;
        _y = y;
        _noAnimation = noAnim;
        _data = data;
        var _loc7 = [];
        for (var _loc4 = 0; _loc4 < menuIn.length; ++_loc4)
        {
            var _loc9 = [];
            for (var _loc3 = 0; _loc3 < menuIn[_loc4].length; ++_loc3)
            {
                if (menuIn[_loc4][_loc3])
                {
                    _loc9.push(menuIn[_loc4][_loc3]);
                } // end if
            } // end of for
            if (_loc9.length > 0)
            {
                _loc7.push(_loc9);
            } // end if
        } // end of for
        for (var _loc4 = 0; _loc4 < _loc7.length; ++_loc4)
        {
            if (_loc7[_loc4][0] == net.wargaming.controls.ContextMenu.SEPARATE)
            {
                var _loc2 = gfx.core.UIComponent.createInstance(this, "ContextMenuItemSeparate", "item" + _loc4, this.getNextHighestDepth(), {});
                _loc2.onRollOver = function ()
                {
                };
                _loc2.useHandCursor = false;
                if (items[items.length - 1])
                {
                    _loc2._width = items[items.length - 1]._width;
                } // end if
                _loc2.index = _loc4;
                _loc2.id = net.wargaming.controls.ContextMenu.SEPARATE;
            }
            else
            {
                _loc2 = gfx.core.UIComponent.createInstance(this, "ContextMenuItem", "item" + _loc4, this.getNextHighestDepth(), {});
                var _loc5 = _loc7[_loc4][0];
                _loc2.index = _loc4;
                if (typeof(_loc5) == "string")
                {
                    _loc2.id = _loc5;
                    _loc2.label = "#menu:contextMenu/" + _loc5;
                }
                else
                {
                    _loc2.id = _loc5.id;
                    _loc2.label = _loc5.label ? (_loc5.label) : ("#menu:contextMenu/" + _loc5.id);
                    _loc2.disabled = _loc5.disabled;
                } // end else if
            } // end else if
            var _loc8 = items[items.length - 1];
            _loc2._x = MARGIN + OFFSETS.LEFT;
            _loc2._y = (_loc8 == null ? (MARGIN + OFFSETS.TOP) : (_loc8._y + _loc8._height)) + ITEM_OFFSET + (_loc8.id == net.wargaming.controls.ContextMenu.SEPARATE ? (-1) : (0));
            _loc2.addEventListener("click", this, "onMenuItemClick");
            _loc2.addEventListener("rollOver", this, "onMenuItemRollOver");
            _loc2.items = _loc7[_loc4].slice(1, _loc7[_loc4].length);
            _loc2.arrow_mc._visible = _loc2.items != null && _loc2.items.length > 0;
            items.push(_loc2);
        } // end of for
        if (items.length > 0)
        {
            bg_mc._width = MARGIN * 2 + OFFSETS.LEFT + OFFSETS.RIGHT + items[0]._width;
            bg_mc._height = MARGIN + items[items.length - 1]._y + items[items.length - 1]._height + OFFSETS.BOTTOM;
            Math.round(bg_mc._height);
        } // end if
        if (_y + _height > Stage.height)
        {
            _y = Math.round(_y - _height);
        } // end if
        if (_y < 0)
        {
            _y = BORDER_OFFSET;
        } // end if
        if (_x + _width > Stage.width)
        {
            _x = Math.round(_x - _width);
        } // end if
        if (_x < 0)
        {
            _x = BORDER_OFFSET;
        } // end if
        for (var _loc10 = 0; _loc10 < items.length; ++_loc10)
        {
            if (items[_loc10].id == net.wargaming.controls.ContextMenu.SEPARATE)
            {
                items[_loc10].swapDepths(this.getNextHighestDepth());
            } // end if
        } // end of for
    } // End of the function
    function hide()
    {
        Mouse.removeListener(this);
        Key.removeListener(this);
        while (items.length != 0)
        {
            var _loc2 = items.pop();
            _loc2.removeMovieClip();
            false;
        } // end while
    } // End of the function
    function __rolling_up_func(scope, args)
    {
        if (Math.abs(args.curOffset) >= args.offset)
        {
            clearInterval(args.target.roll_up_id);
            args.target.roll_up_id = null;
            if (!args.target.opened)
            {
                if (scope.subMenuCreated)
                {
                    for (var _loc3 = 0; _loc3 < args.target.length; ++_loc3)
                    {
                        args.target["item" + _loc3].removeMovieClip();
                        delete args.target["item" + _loc3];
                    } // end of for
                    args.target.length = 0;
                    scope.subMenuCreated = false;
                } // end if
            }
            else
            {
                for (var _loc3 = 0; _loc3 < args.target.length; ++_loc3)
                {
                    args.target["item" + _loc3]._alpha = 100;
                } // end of for
            } // end else if
            if (args.curOffset > 0)
            {
                args.step = args.offset - args.curOffset;
            }
            else
            {
                args.step = Math.abs(args.curOffset) - args.offset;
            } // end if
        } // end else if
        args.curOffset = args.curOffset + args.step;
        if (args.target.opened)
        {
            for (var _loc5 = 0; _loc5 < args.target.items.length; ++_loc5)
            {
                args.target["item" + _loc5]._alpha = args.target["item" + _loc5]._alpha + scope.ALPHA_STEP_UP;
            } // end of for
        }
        else
        {
            for (var _loc5 = 0; _loc5 < args.target.items.length; ++_loc5)
            {
                args.target["item" + _loc5]._alpha = args.target["item" + _loc5]._alpha - scope.ALPHA_STEP_DOWN;
            } // end of for
        } // end else if
        for (var _loc3 = args.target.index + 1; _loc3 < scope.items.length; ++_loc3)
        {
            scope.items[_loc3]._y = scope.items[_loc3]._y + Math.round(args.step);
            if (scope.items[_loc3].opened)
            {
                for (var _loc2 = 0; _loc2 < scope.items[_loc3].items.length; ++_loc2)
                {
                    scope.items[_loc3]["item" + _loc2]._y = scope.items[_loc3]["item" + _loc2]._y + Math.round(args.step);
                } // end of for
            } // end if
        } // end of for
        scope.bg_mc._height = scope.bg_mc._height + args.step;
        scope.bg_mc._height = Math.round(scope.bg_mc._height);
    } // End of the function
    function expand(item, offset)
    {
        var _loc3 = {target: item, offset: offset, curOffset: 0, step: _noAnimation ? (offset) : (ROLLING_STEP)};
        if (item.roll_up_id != null)
        {
            clearInterval(item.roll_up_id);
        } // end if
        item.roll_up_id = setInterval(__rolling_up_func, 5, this, _loc3);
        item.opened = true;
        item.arrow_mc.gotoAndPlay("down");
    } // End of the function
    function rollUp(item, offset)
    {
        var _loc3 = {target: item, offset: offset, curOffset: 0, step: -(_noAnimation ? (offset) : (ROLLING_STEP))};
        if (item.roll_up_id != null)
        {
            clearInterval(item.roll_up_id);
        } // end if
        item.roll_up_id = setInterval(__rolling_up_func, 5, this, _loc3);
        item.opened = false;
        item.arrow_mc.gotoAndPlay("up");
    } // End of the function
    function onMenuItemClickHandler(args)
    {
        this.dispatchEvent({type: "action", id: args.target.id, data: _data});
        if (!args.target.items || args.target.items.length == 0)
        {
            net.wargaming.managers.ContextMenuManager.__get__instance().hide();
        } // end if
    } // End of the function
    function onMenuItemClick(args)
    {
        this.onMenuItemClickHandler(args);
        if (args.target.items.length > 0)
        {
            if (!args.target.opened)
            {
                if (!subMenuCreated)
                {
                    var _loc8 = 0;
                    var _loc7 = null;
                    for (var _loc5 = 0; _loc5 < args.target.items.length; ++_loc5)
                    {
                        var _loc3 = gfx.core.UIComponent.createInstance(this, "ContextMenuSubitem", "item" + _loc5, this.getNextHighestDepth(), {});
                        var _loc4 = args.target.items[_loc5];
                        _loc3.index = _loc5;
                        if (typeof(_loc4) == "string")
                        {
                            _loc3.id = _loc4;
                            _loc3.label = "#menu:contextMenu/" + _loc4;
                        }
                        else
                        {
                            _loc3.id = _loc4.id;
                            _loc3.label = _loc4.label ? (_loc4.label) : ("#menu:contextMenu/" + _loc4.id);
                            _loc3.disabled = _loc4.disabled;
                        } // end else if
                        _loc3._x = args.target._x;
                        _loc3._width = args.target._width;
                        _loc3._alpha = 0;
                        _loc3._y = Math.round((_loc7 == null ? (args.target._y + args.target._height) : (_loc7._y + _loc7._height)) + ITEM_OFFSET);
                        _loc3.addEventListener("click", this, "onMenuItemClickHandler");
                        _loc8 = _loc8 + (_loc3._height + ITEM_OFFSET);
                        _loc7 = _loc3;
                        args.target["item" + _loc5] = _loc3;
                        args.target.length = _loc5 + 1;
                    } // end of for
                    var _loc9 = items[args.target.index + 1] ? (items[args.target.index + 1]._y) : (bg_mc._y + bg_mc._height - MARGIN - OFFSETS.BOTTOM);
                    _loc8 = _loc8 - (_loc9 - items[args.target.index]._y - items[args.target.index]._height - ITEM_OFFSET);
                    subMenuCreated = true;
                    this.expand(args.target, _loc8);
                }
                else
                {
                    _loc8 = 0;
                    for (var _loc6 = 0; _loc6 < args.target.length; ++_loc6)
                    {
                        args.target["item" + _loc6]._alpha = 0;
                        _loc8 = _loc8 + (args.target["item" + _loc6]._height + ITEM_OFFSET);
                    } // end of for
                    _loc9 = items[args.target.index + 1] ? (items[args.target.index + 1]._y) : (bg_mc._y + bg_mc._height - MARGIN - OFFSETS.BOTTOM);
                    _loc8 = _loc8 - (_loc9 - items[args.target.index]._y - items[args.target.index]._height - ITEM_OFFSET);
                    this.expand(args.target, _loc8);
                } // end else if
            }
            else
            {
                for (var _loc6 = 0; _loc6 < args.target.items.length; ++_loc6)
                {
                    args.target["item" + _loc6]._alpha = 90;
                } // end of for
                _loc9 = items[args.target.index + 1] ? (items[args.target.index + 1]._y) : (bg_mc._y + bg_mc._height - MARGIN - OFFSETS.BOTTOM);
                this.rollUp(args.target, _loc9 - items[args.target.index]._y - items[args.target.index]._height - ITEM_OFFSET);
            } // end if
        } // end else if
    }*/
    function toString()
    {
        return ("[Wargaming ContextMenu " + _name + "]");
    } // End of the function
    var ALPHA_STEP_UP = 3;
    var ALPHA_STEP_DOWN = 6;
    var ROLLING_STEP = 6;
    var CURSOR_HEIGHT = 23;
    var CURSOR_WIDTH = 23;
    var BORDER_OFFSET = 15;
    static var SEPARATE = "separate";
    var MARGIN = 5;
    var ITEM_OFFSET = -1;
    var OFFSETS = {LEFT: 0, RIGHT: 0, TOP: 0, BOTTOM: 4};
    var _data = null;
    var _noAnimation = false;
    var m_overItem = null;
    var items = new Array();
    var subMenuCreated = false;
} // End of Class
