class net.wargaming.managers.WindowManager
{
    var groupsCounter, context, onEnterFrame, xAdjust, yAdjust, window, xIncrement, yIncrement;
    static var opened, __get__instance;
    
    static var REMAIN_IN_POSITON = 1;
    static var HOLD_VISIBLE = 2;
    static var windows = [];
    static var _instance = net.wargaming.managers.WindowManager.__get__instance();
    var inited = false;
    var groupPositionOffset = {x: 20, y: 20};
} // End of Class
