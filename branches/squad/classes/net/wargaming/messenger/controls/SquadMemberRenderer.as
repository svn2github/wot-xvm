intrinsic class net.wargaming.messenger.controls.SquadMemberRenderer extends gfx.core.UIComponent
{
	var vehicleNameField;
	var data;
	var tankName:String;
	var tankName2:String;
	var lvl:String;
	var battleLevels:String;
	var type:String;
	var nation:String;
	var status:String;
	var statusString;
	var romanNumb:Boolean;
	var startSeparator:String;
	var midSeparator:String;
	var endSeparator:String;
	
	function SquadMemberRenderer();
	function afterSetData();
	function updateAfterStateChange();
	function defineTankInfo():String;
	//function draw();
	function getToolTipData();
}
