intrinsic class net.wargaming.tankmen.CrewItemRenderer extends gfx.controls.DropdownMenu
{
    var paddingTop, paddingBottom, paddingRight, paddingLeft, margin, _width, offsetX, __set__dropdownWidth, converter, __set__dropdown, __set__itemRenderer, constraints, _disableConstraints, textField, _autoSize, sizeIsInvalid, focusIndicator, _focused, hitTest, data, _disabled, onMouseDown, addEventListener, handleDragOver, onDragOverAux, handleDragOut, onDragOutAux, handleReleaseOutside, onReleaseOutsideAux, clickArea, __get__disabled, isOpen, _dropdown, __set__focused, __set__selected, skills, setState, __get__dataProvider, open, __set__scrollBar, createDropDown, index, __set__label, state, _visible, __set__dataProvider, _height, __get__rowCount, _parent, _y, offsetY, icon, iconRank, iconRole, levelSpecializationMain, role, rank, roles, speed_xp_bg, new_skill_anim, goups_icons, lastSkillLevel, name, __get__selected, _name, __set__disabled, __get__hasData;
    /*function CrewItemRenderer()
    {
        super();
        Mouse.addListener(this);
        paddingTop = 4;
        paddingBottom = 3;
        paddingRight = 0;
        paddingLeft = 4;
        margin = 0;
        offsetX = _width - 1;
        this.__set__dropdownWidth(381 + paddingRight + paddingLeft);
        converter = new net.wargaming.managers.XMLKeyConverter();
    } // End of the function
    function configUI()
    {
        this.__set__dropdown("RecruitScrollingList");
        this.__set__itemRenderer("RecruitItemRenderer");
        constraints = new gfx.utils.Constraints(this, true);
        if (!_disableConstraints)
        {
            constraints.addElement(textField, gfx.utils.Constraints.ALL);
        } // end if
        if (_autoSize)
        {
            sizeIsInvalid = true;
        } // end if
        super.configUI();
        if (focusIndicator != null && !_focused && focusIndicator._totalFrames == 1)
        {
            focusIndicator._visible = false;
        } // end if
        this.updateAfterStateChange();
        function onMouseDownFunc(button, target)
        {
            if (Mouse.RIGHT == button)
            {
                this.close();
            } // end if
            if (Mouse.RIGHT == button && this.hitTest(_root._xmouse, _root._ymouse, true))
            {
                var _loc3 = Mouse.getTopMostEntity();
                var _loc4 = false;
                while (_loc3)
                {
                    if (_loc3 == this)
                    {
                        _loc4 = true;
                        break;
                    } // end if
                    _loc3 = _loc3._parent;
                } // end while
                if (_loc4 && data.tankmanID > 0 && !_disabled)
                {
                    var _loc5 = net.wargaming.managers.ContextMenuManager.__get__instance().show([["personalCase"], [net.wargaming.controls.ContextMenu.SEPARATE], ["tankmanUnload"], ["tankmanUnloadAll"], [net.wargaming.controls.ContextMenu.SEPARATE], ["dismiss"]], false, {id: data.tankmanID});
                    _loc5.addEventListener("action", this, "onContextMenuAction");
                } // end if
            } // end if
        } // End of the function
        onMouseDown = onMouseDownFunc;
        this.addEventListener("click", this, "toggleMenu");
        onDragOverAux = handleDragOver;
        onDragOutAux = handleDragOut;
        onReleaseOutsideAux = handleReleaseOutside;
    } // End of the function
    function get hasData()
    {
        var _loc2 = data.tankmanID != null;
        return (_loc2);
    } // End of the function
    function onContextMenuAction(args)
    {
        switch (args.id)
        {
            case "personalCase":
            {
                this.__openPersonalCase();
                break;
            } 
            case "tankmanUnload":
            {
                net.wargaming.managers.PersonalCaseManager.__get__instance().close(data.tankmanID, true);
                gfx.io.GameDelegate.call("tankmen.unloadTankman", [data.compact]);
                break;
            } 
            case "tankmanUnloadAll":
            {
                net.wargaming.managers.PersonalCaseManager.__get__instance().closeAllManagedWindow(true);
                gfx.io.GameDelegate.call("tankmen.unloadAllTankman", [data.compact]);
                break;
            } 
            case "dismiss":
            {
                var _loc2 = net.wargaming.notification.MessageDialog.show("dismissTankman", true);
                _loc2.addEventListener("submit", this, "onDismissTankman");
                break;
            } 
        } // End of switch
    } // End of the function
    function onDismissTankman(args)
    {
        net.wargaming.managers.PersonalCaseManager.__get__instance().close(data.tankmanID, true);
        var _loc2 = data.tankmanID + "skillDropWindowClip";
        net.wargaming.managers.WindowManager.__get__instance().close(_loc2, true);
        gfx.io.GameDelegate.call("tankmen.dismissTankman", [data.compact]);
    } // End of the function
    function __openPersonalCase(selected_tab)
    {
        var _loc2 = {_formSource: "CrewTankmanInfo.swf", _formType: "swf", _title: data.firstname + " " + data.lastname + ", " + data.role + " - " + converter.convert("#menu:tankmanPersonalCase/title"), _offsetTop: 34, _offsetBottom: 16, _offsetLeft: 11, _offsetRight: 12, allowResize: false, data: data, selectedTab: selected_tab};
        var _loc3 = net.wargaming.managers.PersonalCaseManager.__get__instance().open(data.tankmanID, _loc2, true);
        _loc3.addEventListener("confirmFormComplete", function (event)
        {
            net.wargaming.managers.PersonalCaseManager.__get__instance().moveTo(event.target, Stage.width - event.width >> 1, Stage.height - event.height >> 1);
        });
    } // End of the function
    function set disabled(value)
    {
        super.__set__disabled(value);
        clickArea.useHandCursor = !value;
        //return (this.disabled());
        null;
    } // End of the function
    function handleStageClick(event)
    {
        super.handleStageClick(event);
        this.onMouseDownFunc(event);
    } // End of the function
    function close()
    {
        if (!isOpen || closeOnlyClickItem && !itemClicked)
        {
            return;
        } // end if
        isOpen = false;
        if (_dropdown == null)
        {
            return;
        } // end if
        _dropdown.visible = false;
        onMouseDown = onMouseDownFunc;
        this.__set__selected(this.__set__focused(false));
    } // End of the function
    function handleChange(event)
    {
        itemClicked = true;
        super.handleChange();
        itemClicked = false;
    } // End of the function
    function toggleMenu(args)
    {
        for (var _loc6 = 0; _loc6 < skills.renderers.length; ++_loc6)
        {
            if (skills.dataProvider[_loc6].buy)
            {
                var _loc3 = {x: _root._xmouse, y: _root._ymouse};
                skills.renderers[_loc6].globalToLocal(_loc3);
                if (_loc3.x > 0 && _loc3.x < skills.renderers[_loc6]._width && _loc3.y > 0 && _loc3.y < skills.renderers[_loc6]._height)
                {
                    if (isOpen)
                    {
                        this.close();
                    } // end if
                    if (data.tankmanID > 0)
                    {
                        this.__openPersonalCase(2);
                        this.__set__selected(false);
                        this.setState("out");
                        return;
                    } // end if
                } // end if
            } // end if
        } // end of for
        for (var _loc6 in this.__get__dataProvider())
        {
            this.__get__dataProvider()[_loc6].slot = data.slot;
            this.__get__dataProvider()[_loc6].parentTankmanID = data.tankmanID;
            this.__get__dataProvider()[_loc6].curVehicleType = data.curVehicleType;
            this.__get__dataProvider()[_loc6].curVehicleName = data.curVehicleName;
            this.__get__dataProvider()[_loc6].vehicleElite = data.vehicleElite;
        } // end of for...in
        this.__set__focused(true);
        !isOpen ? (this.open()) : (this.close());
    } // End of the function
    function set dataProvider(value)
    {
        if (_dropdown instanceof gfx.core.UIComponent)
        {
            this.__set__dropdown(value.length > 1 ? ("RecruitScrollingList") : ("RecruitScrollingList2"));
        } // end if
        if (value.length > 5)
        {
            this.__set__scrollBar("ScrollBar");
            paddingRight = 0;
            this.__set__dropdownWidth(381 + paddingRight + paddingLeft);
        }
        else
        {
            this.__set__scrollBar(null);
            paddingRight = 4;
            this.__set__dropdownWidth(368 + paddingRight + paddingLeft);
        } // end else if
        super.__set__dataProvider(value);
        if (_dropdown instanceof gfx.core.UIComponent || _dropdown == null)
        {
            this.createDropDown();
        } // end if
        //return (this.dataProvider());
        null;
    } // End of the function
    function setListData(index, label, selected)
    {
        this.index = index;
        if (label == null)
        {
            this.__set__label("Empty");
        }
        else
        {
            this.__set__label(label);
        } // end else if
        state = "up";
        this.__set__selected(selected);
    } // End of the function
    function setData(data)
    {
        this.data = data;
        if (!data)
        {
            _visible = false;
            return;
        } // end if
        if (data.recruitList)
        {
            this.__set__dataProvider(data.recruitList.sort(function (a, b)
            {
                if (a.personalCase && !b.personalCase)
                {
                    return (-1);
                } // end if
                if (!a.personalCase && b.personalCase)
                {
                    return (1);
                } // end if
                if (a.recruit && !b.recruit)
                {
                    return (-1);
                } // end if
                if (!a.recruit && b.recruit)
                {
                    return (1);
                } // end if
                if (a.selected && !b.selected)
                {
                    return (-1);
                } // end if
                if (!a.selected && b.selected)
                {
                    return (1);
                } // end if
                if (a.specializationLevel > b.specializationLevel)
                {
                    return (-1);
                } // end if
                if (a.specializationLevel < b.specializationLevel)
                {
                    return (1);
                } // end if
                return (0);
            }));
            var _loc9 = _height * (data.recruitList.length < this.__get__rowCount() ? (data.recruitList.length) : (this.__get__rowCount()));
            var _loc7 = _height / 2 - _loc9 / 2 - _height;
            var _loc8 = _parent._parent._y - _y - _height;
            offsetY = Math.round(_loc7 >= _loc8 ? (_loc7) : (_loc8)) - 3;
        } // end if
        if (data.iconFile != icon.imageLoader.source)
        {
            icon.imageLoader._visible = true;
            icon.imageLoader.source = "../maps/icons/tankmen/icons/small/" + data.iconFile;
        } // end if
        if (data.rankIconFile != iconRank.imageLoader.source)
        {
            iconRank.imageLoader._visible = true;
            iconRank.imageLoader.source = "../maps/icons/tankmen/ranks/small/" + data.rankIconFile;
        } // end if
        if (data.roleIconFile != iconRole.imageLoader.source)
        {
            iconRole.imageLoader._visible = true;
            iconRole.imageLoader.source = data.roleIconFile;
        } // end if
        levelSpecializationMain.textfield.html = role.textfield.html = rank.textfield.html = true;
        role.textfield.htmlText = data.role;
        var _loc4 = data.specializationLevel + "%";
        var _loc5 = converter.convert("#menu:tankmen/" + data.tankType);
        if (data.tankmanID == null)
        {
            levelSpecializationMain.textfield.htmlText = "";
            role.textfield.htmlText = role.textfield.htmlText + (", " + _loc5 + " " + data.vehicleType);
        }
        else if (data.curVehicleType != data.tankType)
        {
            levelSpecializationMain.textfield.htmlText = " <font color=\'" + specializationColors.debuff + "\'>" + _loc4 + "</font>";
            role.textfield.htmlText = role.textfield.htmlText + (", <font color=\'" + specializationColors.debuff + "\'>" + _loc5 + " " + data.vehicleType + "</font>");
        }
        else if (data.curVehicleName != data.vehicleType)
        {
            if (!data.vehicleElite)
            {
                levelSpecializationMain.textfield.htmlText = " <font color=\'" + specializationColors.debuff + "\'>" + _loc4 + "</font>";
            }
            else
            {
                levelSpecializationMain.textfield.htmlText = _loc4;
            } // end else if
            role.textfield.htmlText = role.textfield.htmlText + (", " + _loc5 + " <font color=\'" + specializationColors.debuff + "\'> " + data.vehicleType + "</font>");
        }
        else
        {
            levelSpecializationMain.textfield.htmlText = data.isLessMastered ? ("<font color=\'#ffd387\'>" + _loc4 + "</font>") : (_loc4);
            role.textfield.htmlText = role.textfield.htmlText + (", " + _loc5 + " " + data.vehicleType);
        } // end else if
        var _loc13 = data.efficiencyLevel + data.bonus;
        var _loc12 = data.specializationLevel;
        var _loc11 = data.efficiencyLevel - data.specializationLevel;
        var _loc10 = data.bonus;
        var _loc3 = new Array();
        for (var _loc6 in data.roles)
        {
            _loc3.push({icon: "../maps/icons/tankmen/roles/small/" + data.roles[_loc6] + ".png"});
        } // end of for...in
        roles.dataProvider = _loc3.reverse();
        speed_xp_bg._visible = data.isLessMastered;
        this.updateSkills(data);
        this.__set__selected(false);
        _visible = true;
    } // End of the function
    function updateSkills(data)
    {
        var _loc4 = new Array();
        new_skill_anim._alpha = 0;
        if (data.skills.length <= net.wargaming.tankmen.CrewItemRenderer.MAX_ICONS)
        {
            goups_icons._alpha = 0;
            goups_icons._visible = false;
            for (var _loc7 in data.skills)
            {
                _loc4.push(this.createSkillObj(data, _loc7));
            } // end of for...in
        }
        else
        {
            goups_icons._alpha = 100;
            goups_icons._visible = true;
            var _loc5 = 0;
            if (data.lastSkillLevel == 100 && data.availableSkillsCount == data.skills.length && !data.skills[data.skills.length - 1].buy)
            {
                _loc5 = 1;
            } // end if
            var _loc6 = data.skills.length - 2;
            goups_icons.skillsGroupNum.text = "x" + (_loc6 + 1 + _loc5);
            for (var _loc3 = data.skills.length - 1 - _loc5; _loc3 >= _loc6; --_loc3)
            {
                if (_loc3 == _loc6)
                {
                    _loc4.push({});
                    _loc4.push({});
                } // end if
                _loc4.push(this.createSkillObj(data, _loc3 + _loc5));
            } // end of for
        } // end else if
        skills.dataProvider = _loc4.reverse();
        lastSkillLevel.text = "";
        if (data.skills.length > 0 && !data.skills[0].buy && data.lastSkillLevel != undefined && data.lastSkillLevel != 100)
        {
            lastSkillLevel.text = data.lastSkillLevel + "%";
        } // end if
        lastSkillLevel._x = skills._x + (skills.columnWidth + skills.paddingRight) * _loc4.length;
    } // End of the function
    function createSkillObj(skillsData, num)
    {
        var _loc1 = new Object();
        if (!skillsData.skills[num].buy)
        {
            _loc1.icon = "../maps/icons/tankmen/skills/small/" + skillsData.skills[num].icon;
            _loc1.inprogress = num == skillsData.skills.length - 1 && skillsData.lastSkillLevel != 100;
            _loc1.name = skillsData.skills[num].name;
            _loc1.desc = skillsData.skills[num].desc;
            _loc1.active = skillsData.skills[num].active;
        }
        else
        {
            _loc1.icon = "../maps/icons/tankmen/skills/small/new_skill.png";
            _loc1.tankmanID = skillsData.tankmanID;
            _loc1.buy = true;
            _loc1.active = skillsData.skills[num].active;
        } // end else if
        return (_loc1);
    } // End of the function
    function updateAfterStateChange()
    {
        super.updateAfterStateChange();
        name.textfield.text = data.rank + " " + data.firstname + " " + data.lastname;
        if (state == "up" || state == "disabled" || state == "out" && !this.__get__selected())
        {
            name.textfield.text = data.rank + " " + data.lastname;
        } // end if
    } // End of the function
    function toString()
    {
        return ("[Scaleform CrewItemRenderer " + _name + "]");
    } // End of the function
    function handleMouseRollOver(mouseIndex)
    {
        super.handleMouseRollOver(mouseIndex);
        this.playSound("over");
    } // End of the function
    function handleMouseRollOut(mouseIndex)
    {
        super.handleMouseRollOut(mouseIndex);
        this.playSound("out");
    } // End of the function
    function handleMousePress(mouseIndex, button)
    {
        super.handleMousePress(mouseIndex, button);
        if (!_disabled)
        {
            this.playSound("press");
        } // end if
    } // End of the function
    function playSound(state)
    {
        net.wargaming.managers.SoundManager.playSound(state, soundType, soundId);
    } 
	*/
    var selectable = true;
    var soundType = "rendererNormal";
    var soundId = "";
    static var MAX_ICONS = 5;
    var specializationColors = {buff: "#00FF00", debuff: "#FF0000"};
    var closeOnlyClickItem = false;
    var itemClicked = false;
	var onMouseDownFunc = null;
	var handleChange = null; 
	var updateAfterStateChange = null;
	var handleMouseRollOver = null;
	var handleMouseRollOut = null;
	var handleMousePress = null;
	var handleStageClick = null;
} // End of Class
