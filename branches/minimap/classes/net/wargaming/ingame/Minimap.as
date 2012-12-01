intrinsic class net.wargaming.ingame.Minimap
{
    static var MARKERS_SCALING:Number;
    
    var icons:MovieClip;
    
    function Minimap();
    
    function draw();
    function updateContent();
    function updateContentBeforeDraw(leftBorderSpace, topBorderSpace, rightBorderSpace, bottomBorderSpace);
    function onEntryInited();
}