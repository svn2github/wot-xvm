/*
 * Warning!
 * This file is for acquaintance only.
 * Original VehicleMarker class by WG.
 * Decompiled by Sothink SWF Decompiler 7.2.
 */

// [Initial MovieClip Action of sprite 20]
#initclip 11
class wot.VehicleMarkersManager.VehicleMarker extends gfx.core.UIComponent
{
    var m_playerFullName,
    m_vehicleClass,
    m_vname,
    initialized,
    __get__vehicleDestroyed,
    m_markerState, __get__colorSchemeName, __get__colorsManager, pNameField,
    vNameField, marker, healthBar, __get__isEnabledExInfo, actionMarker,
    iconLoader, levelIcon, invalidate, gotoAndStop;
    
    function VehicleMarker()
    {
        super();
    }
    function init(vClass, vIconSource, vType, vLevel, pFullName, curHealth, maxHealth, entityName, speaking, hunt)
    {
        if (entityName != null)
        {
            m_entityName = entityName;
        }
        m_playerFullName = pFullName;
        m_curHealth = curHealth >= 0 ? (curHealth) : (0);
        m_maxHealth = maxHealth;
        m_vehicleClass = vClass;
        m_source = vIconSource;
        m_vname = vType;
        m_level = vLevel;
        m_speaking = speaking;
        m_hunt = hunt;
        if (initialized)
        {
            this.populateData();
        }
    }
    function update()
    {
        this.updateMarkerLabel();
    }
    function get colorsManager()
    {
        //return (net.wargaming.managers.ColorSchemeManager.instance());
    }
    function get colorSchemeName()
    {
        //return ((this.vehicleDestroyed() ? ("vm_dead_") : ("vm_")) + m_entityName);
    }
    function get vehicleDestroyed()
    {
        return (m_markerState == "dead" || m_markerState == "immediate_dead");
    }
    function get isEnabledExInfo()
    {
        return (net.wargaming.ingame.VehicleMarker.s_showExInfForDestroyed || m_markerState != "dead" && m_markerState != "immediate_dead");
    }
    function isSpeaking()
    {
        return (m_speaking);
    }
    function setSpeaking(value)
    {
        if (m_speaking == value)
        {
            return;
        }
        m_speaking = value;
        if (initialized)
        {
            this.setVehicleClass();
        }
    }
    function getMarkerState()
    {
        return (m_markerState);
    }
    function setMarkerState(value)
    {
        m_markerState = value;
        if (initialized)
        {
            if (this.__get__vehicleDestroyed())
            {
                if (m_speaking)
                {
                    this.setVehicleClass();
                }
                var _loc2 = this.__get__colorsManager().getRGB(this.__get__colorSchemeName());
                if (_loc2 != null)
                {
                    pNameField.textColor = _loc2;
                }
                vNameField.textColor = net.wargaming.ingame.VehicleMarker.s_vehicleDestroyColor;
            }
            marker.gotoAndPlay(m_markerState);
        }
    }
    function setEntityName(value)
    {
        if (value == m_entityName)
        {
            return;
        }
        m_entityName = value;
        this.updateMarkerLabel();
    }
    function updateHealth(curHealth)
    {
        m_curHealth = curHealth >= 0 ? (curHealth) : (0);
        if (m_isPopulated)
        {
            healthBar.gotoAndStop(int(m_curHealth / m_maxHealth * 100));
        }
    }
    function updateState(newState, isImmediate)
    {
        if (m_markerState == "dead" || m_markerState == "immediate_dead")
        {
            return;
        }
        if (isImmediate && newState == "dead")
        {
            newState = "immediate_" + newState;
        }
        this.setMarkerState(newState);
    }
    function showExInfo(show)
    {
        var _loc2 = show && this.__get__isEnabledExInfo();
        pNameField._visible = _loc2;
        healthBar._visible = _loc2;
        vNameField._visible = _loc2;
        var _loc3 = net.wargaming.ingame.VehicleMarker.s_offsets[net.wargaming.ingame.VehicleMarker.s_showVehicleIcon || net.wargaming.ingame.VehicleMarker.s_showVehicleLevel ? (1) : (0)] * (_loc2 ? (1) : (-1));
        actionMarker._y = actionMarker._y - _loc3;
        iconLoader._visible = _loc2 && net.wargaming.ingame.VehicleMarker.s_showVehicleIcon;
        this._centeringIcon();
        levelIcon._visible = _loc2 && net.wargaming.ingame.VehicleMarker.s_showVehicleLevel;
    }
    function showActionMarker(actionState)
    {
        actionMarker.showAction(actionState);
    }
    function configUI()
    {
        super.configUI();
        this.populateData();
    }
    function draw()
    {
        if (iconLoader != null)
        {
            if (!iconLoader.initialized)
            {
                this.invalidate();
                return;
            }
            iconLoader.addEventListener("ioError", this, "_onErrorLoad");
            iconLoader.addEventListener("complete", this, "_onCompleteLoad");
            iconLoader.__set__source(m_source);
            iconLoader.__set__visible(net.wargaming.ingame.VehicleMarker.s_showExInfo && net.wargaming.ingame.VehicleMarker.s_showVehicleIcon && this.__get__isEnabledExInfo());
            var _loc3 = new flash.geom.Transform(iconLoader);
            _loc3.colorTransform = this.__get__colorsManager().getTransform(this.__get__colorSchemeName());
        }
        super.draw();
    }
    function populateData()
    {
        if (m_isPopulated)
        {
            return (false);
        }
        m_isPopulated = true;
        this.initMarkerLabel();
        var _loc2 = net.wargaming.ingame.VehicleMarker.s_showExInfo && this.__get__isEnabledExInfo();
        if (pNameField != null)
        {
            pNameField.text = m_playerFullName;
        }
        pNameField._visible = _loc2;
        var _loc3 = int(m_curHealth / m_maxHealth * 100);
        if (_loc3 >= 0)
        {
            healthBar.gotoAndStop(_loc3);
        }
        healthBar._visible = _loc2;
        var _loc5 = this.__get__colorsManager().getScheme(this.__get__colorSchemeName());
        if (_loc2)
        {
            actionMarker._y = actionMarker._y -
            net.wargaming.ingame.VehicleMarker.s_offsets[net.wargaming.ingame.VehicleMarker.s_showVehicleIcon
            || net.wargaming.ingame.VehicleMarker.s_showVehicleLevel ? (1) : (0)];
        }
        if (iconLoader != null && iconLoader.initialized)
        {
            iconLoader.addEventListener("ioError", this, "_onErrorLoad");
            iconLoader.addEventListener("complete", this, "_onCompleteLoad");
            iconLoader.__set__visible(_loc2 && net.wargaming.ingame.VehicleMarker.s_showVehicleIcon);
            var _loc6 = new flash.geom.Transform(iconLoader);
            _loc6.colorTransform = _loc5.transform;
        }
        else
        {
            this.invalidate();
        }
        if (vNameField != null)
        {
            vNameField.text = m_vname;
            vNameField._visible = _loc2;
        }
        if (levelIcon != null)
        {
            levelIcon.gotoAndStop(m_level);
            levelIcon._visible = _loc2 && net.wargaming.ingame.VehicleMarker.s_showVehicleLevel && m_level > 0;
        }
        if (m_vehicleClass != null)
        {
            this.setVehicleClass();
        }
        if (m_markerState != null)
        {
            marker.gotoAndPlay(m_markerState);
            if (this.__get__vehicleDestroyed())
            {
                var _loc4 = _loc5.rgb;
                if (_loc4 != null)
                {
                    pNameField.textColor = _loc4;
                }
                vNameField.textColor = net.wargaming.ingame.VehicleMarker.s_vehicleDestroyColor;
            }
        }
        return (true);
    }
    function setVehicleClass()
    {
        if (marker.marker.iconHunt != null)
        {
            marker.marker.icon._visible = !m_hunt;
            marker.marker.iconHunt._visible = m_hunt;
            if (m_hunt)
            {
                marker.marker.iconHunt.gotoAndStop(this._getVehicleClassName());
            }
            else
            {
                marker.marker.icon.gotoAndStop(this._getVehicleClassName());
            }
        }
        else
        {
            marker.marker.icon.gotoAndStop(this._getVehicleClassName());
        }
    }
    function initMarkerLabel()
    {
        var _loc2 = this.__get__colorsManager().getAliasColor(this.__get__colorSchemeName());
        m_markerLabel = _loc2;
        this.gotoAndStop(m_markerLabel);
    }
    function updateMarkerLabel()
    {
        var _loc2 = this.__get__colorsManager().getScheme(this.__get__colorSchemeName());
        if (m_markerLabel == _loc2.aliasColor)
        {
            return;
        }
        m_markerLabel = _loc2.aliasColor;
        this.gotoAndStop(m_markerLabel);
        if (pNameField != null)
        {
            pNameField.text = m_playerFullName;
        }
        pNameField._visible = net.wargaming.ingame.VehicleMarker.s_showExInfo;
        if (m_vehicleClass != null)
        {
            this.setVehicleClass();
        }
        if (m_markerState != null)
        {
            if (this.__get__vehicleDestroyed())
            {
                m_markerState = "immediate_dead";
                var _loc3 = _loc2.rgb;
                if (_loc3 != null)
                {
                    pNameField.textColor = _loc3;
                }
            }
            marker.gotoAndPlay(m_markerState);
        }
        var _loc4 = new flash.geom.Transform(iconLoader);
        _loc4.colorTransform = _loc2.transform;
    }
    function _centeringIcon()
    {
        var _loc2 = iconLoader.__get__content()._width;
        if (_loc2 > 0)
        {
            iconLoader._x = -(_loc2 >> 1) + 6;
        }
    }
    function _onErrorLoad(event)
    {
        iconLoader.__set__source("../maps/icons/vehicle/contour/noImage.tga");
    }
    function _onCompleteLoad(event)
    {
        iconLoader.__set__visible(net.wargaming.ingame.VehicleMarker.s_showExInfo && net.wargaming.ingame.VehicleMarker.s_showVehicleIcon);
        function onEnterFrame()
        {
            this._centeringIcon();
            delete this.onEnterFrame;
        }
    }
    function _getVehicleClassName()
    {
        var _loc2 = m_vehicleClass;
        if (m_speaking && !this.__get__vehicleDestroyed())
        {
            _loc2 = "dynamic";
        }
        return (_loc2);
    }
    static var s_showExInfo = false;
    static var s_showVehicleIcon = false;
    static var s_showVehicleLevel = false;
    static var s_showExInfForDestroyed = false;
    static var s_offsets = [36, 52];
    static var s_vehicleDestroyColor = 6710886;
    var m_markerLabel = "red";
    var m_entityName = "enemy";
    var m_curHealth = 0;
    var m_maxHealth = 0;
    var m_speaking = false;
    var m_hunt = false;
    var m_source = "";
    var m_level = 0;
    var m_isPopulated = false;
}
#endinitclip