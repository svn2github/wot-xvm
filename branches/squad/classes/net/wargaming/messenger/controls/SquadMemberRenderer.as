intrinsic class net.wargaming.messenger.controls.SquadMemberRenderer extends gfx.core.UIComponent
{
	var data;
	var vehicleNameField;
	var statusString;
	
	function configUI();
	function afterSetData();
	function getToolTipData();
	function updateAfterStateChange();
	function defineTankInfo():String;
}
