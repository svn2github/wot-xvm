intrinsic class net.wargaming.ingame.VehicleMarker extends MovieClip
{
  var m_entityName;
  var iconLoader;

  function init(vClass, vIconSource, vType, vLevel, pFullName, curHealth, maxHealth, entityName, speaking, hunt);
  function _onErrorLoad(event);
  function _onCompleteLoad(event);
  function _centeringIcon();
}
