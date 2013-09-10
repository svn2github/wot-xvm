class gfx.controls.DropdownMenu extends gfx.controls.Button
{
    var __set__dataProvider, inspectableDropdown, initialized, __get__dropdown, inspectableItemRenderer, __get__itemRenderer, inspectableScrollBar, __get__scrollBar, __get__dropdownWidth, __get__rowCount, _dataProvider, __set__selectedIndex, __get__dataProvider, __get__selectedIndex, __get__labelField, _labelFunction, __get__labelFunction, onMouseDown, __set__selected, __width, _name, _parent, _xscale, _yscale, __height, addEventListener, toggle, selectedItem, __set__label, dispatchEvent, __set__focused, _selected, __set__dropdown, __set__dropdownWidth, __set__itemRenderer, __set__labelField, __set__labelFunction, __set__rowCount, __set__scrollBar;
    /*function DropdownMenu()
    {
        super();
        this.__set__dataProvider([]);
    } // End of the function
    function get dropdown()
    {
        if (!_dropdown)
        {
            this.createDropDown();
        } // end if
        return (_dropdown);
    } // End of the function
    function set dropdown(value)
    {
        inspectableDropdown = value;
        if (initialized)
        {
            this.createDropDown();
        } // end if
        //return (this.dropdown());
        //null;
    } // End of the function
    function get itemRenderer()
    {
        return (_dropdown.itemRenderer);
    } // End of the function
    function set itemRenderer(value)
    {
        inspectableItemRenderer = value;
        if (_dropdown)
        {
            _dropdown.itemRenderer = inspectableItemRenderer;
        } // end if
        //return (this.itemRenderer());
        //null;
    } // End of the function
    function get scrollBar()
    {
        return (_dropdown.scrollBar);
    } // End of the function
    function set scrollBar(value)
    {
        inspectableScrollBar = value;
        if (_dropdown)
        {
            _dropdown.scrollBar = inspectableScrollBar;
        } // end if
        //return (this.scrollBar());
        //null;
    } // End of the function
    function get dropdownWidth()
    {
        return (_dropdownWidth);
    } // End of the function
    function set dropdownWidth(value)
    {
        _dropdownWidth = value;
        //return (this.dropdownWidth());
        //null;
    } // End of the function
    function get rowCount()
    {
        return (_rowCount);
    } // End of the function
    function set rowCount(value)
    {
        _rowCount = value;
        if (_dropdown != null && _dropdown.hasOwnProperty("rowCount"))
        {
            _dropdown.rowCount = value;
        } // end if
        //return (this.rowCount());
        //null;
    } // End of the function
    function get dataProvider()
    {
        return (_dataProvider);
    } // End of the function
    function set dataProvider(value)
    {
        if (_dataProvider == value)
        {
            return;
        } // end if
        if (_dataProvider != null)
        {
            _dataProvider.removeEventListener("change", this, "onDataChange");
        } // end if
        _dataProvider = value;
        if (value instanceof Array && !value.isDataProvider)
        {
            gfx.data.DataProvider.initialize(_dataProvider);
        }
        else if (_dataProvider.initialize != null)
        {
            _dataProvider.initialize(this);
        } // end else if
        _dataProvider.addEventListener("change", this, "onDataChange");
        if (_dropdown != null)
        {
            _dropdown.dataProvider = _dataProvider;
        } // end if
        this.__set__selectedIndex(0);
        this.updateSelectedItem();
        //return (this.dataProvider());
        //null;
    } // End of the function
    function get selectedIndex()
    {
        return (_selectedIndex);
    } // End of the function
    function set selectedIndex(value)
    {
        _selectedIndex = value;
        if (_dropdown != null)
        {
            _dropdown.selectedIndex = value;
        } // end if
        this.updateSelectedItem();
        //return (this.selectedIndex());
        //null;
    } // End of the function
    function get labelField()
    {
        return (_labelField);
    } // End of the function
    function set labelField(value)
    {
        _labelField = value;
        if (_dropdown != null)
        {
            _dropdown.labelField = _labelField;
        } // end if
        this.updateLabel();
        //return (this.labelField());
        //null;
    } // End of the function
    function get labelFunction()
    {
        return (_labelFunction);
    } // End of the function
    function set labelFunction(value)
    {
        _labelFunction = value;
        if (_dropdown != null)
        {
            _dropdown.labelFunction = _labelFunction;
        } // end if
        this.updateLabel();
        //return (this.labelFunction());
        //null;
    } // End of the function
    function itemToLabel(item)
    {
        if (item == null)
        {
            return ("");
        } // end if
        if (_labelFunction != null)
        {
            return (this._labelFunction(item));
        }
        else if (_labelField != null && item[_labelField] != null)
        {
            return (item[_labelField]);
        } // end else if
        return (item.toString());
    } // End of the function
    function open()
    {
        if (!_dropdown)
        {
            this.createDropDown();
            if (!_dropdown)
            {
                isOpen = false;
                return;
            } // end if
        } // end if
        this.openImpl();
    } // End of the function
    function close()
    {
        if (!isOpen)
        {
            return;
        } // end if
        isOpen = false;
        if (_dropdown == null)
        {
            return;
        } // end if
        _dropdown.visible = false;
        onMouseDown = null;
        this.__set__selected(false);
    } // End of the function
    function invalidateData()
    {
        _dataProvider.requestItemAt(_selectedIndex, this, "populateText");
    } // End of the function
    function setSize(width, height)
    {
        super.setSize(width, height);
        if (_dropdown != null && _dropdownWidth == -1)
        {
            _dropdown.width = __width;
        } // end if
    } // End of the function
    function handleInput(details, pathToFocus)
    {
        var _loc3;
        if (_dropdown != null && isOpen)
        {
            _loc3 = _dropdown.handleInput(details);
            if (_loc3)
            {
                return (true);
            } // end if
        } // end if
        _loc3 = super.handleInput(details, pathToFocus);
        var _loc5 = details.value == "keyDown";
        switch (details.navEquivalent)
        {
            case gfx.ui.NavigationCode.ESCAPE:
            {
                if (isOpen)
                {
                    if (_loc5)
                    {
                        this.close();
                    } // end if
                    return (true);
                } // end if
            } 
        } // End of switch
        return (_loc3);
    } // End of the function
    function removeMovieClip()
    {
        if (_dropdown)
        {
            _dropdown.removeMovieClip();
        } // end if
        super.removeMovieClip();
    } // End of the function
    function toString()
    {
        return ("[Scaleform DropdownMenu " + _name + "]");
    } // End of the function
    function createDropDown()
    {
        if (_dropdown == inspectableDropdown)
        {
            return;
        } // end if
        if (_dropdown != null)
        {
            _dropdown.removeMovieClip();
        } // end if
        if (typeof(inspectableDropdown) == "string")
        {
            _dropdown = (MovieClip)(_parent[inspectableDropdown]);
            if (_dropdown == null)
            {
                _dropdown = gfx.managers.PopUpManager.createPopUp(this, inspectableDropdown.toString(), {itemRenderer: inspectableItemRenderer, paddingTop: paddingTop, paddingBottom: paddingBottom, paddingLeft: paddingLeft, paddingRight: paddingRight, thumbOffsetTop: thumbOffsetTop, thumbOffsetBottom: thumbOffsetBottom, thumbSizeFactor: thumbSizeFactor, margin: margin});
                _dropdown.scrollBar = inspectableScrollBar;
            } // end if
        }
        else if (inspectableDropdown instanceof MovieClip)
        {
            _dropdown = (MovieClip)(_dropdown);
        } // end else if
        if (_dropdown == null)
        {
            return;
        } // end if
        _dropdown.addEventListener("itemClick", this, "handleChange");
        _dropdown.labelField = _labelField;
        _dropdown.labelFunction = _labelFunction;
        _dropdown.dataProvider = _dataProvider;
        _dropdown.selectedIndex = _selectedIndex;
        _dropdown.visible = false;
        _dropdown.focusTarget = this;
        if (_dropdown.wrapping != null)
        {
            _dropdown.wrapping = "stick";
        } // end if
        if (_dropdown.autoRowCount != null)
        {
            _dropdown.autoRowCount = true;
        } // end if
        if (_dropdown.rowCount != null)
        {
            _dropdown.rowCount = Math.min(_dataProvider.length, _rowCount);
        } // end if
        if (_dropdownWidth != 0)
        {
            _dropdown.width = _dropdownWidth == -1 ? (__width + extent) : (_dropdownWidth);
        } // end if
    } // End of the function
    function openImpl()
    {
        if (isOpen)
        {
            return;
        } // end if
        isOpen = true;
        if (_dropdownWidth != _dropdown.width)
        {
            _dropdown.width = _dropdownWidth == -1 ? (__width + extent) : (_dropdownWidth);
        } // end if
        if (_rowCount != _dropdown.rowCount)
        {
            _dropdown.rowCount = Math.min(_dataProvider.length, _rowCount);
        } // end if
        _dropdown.validateNow();
        onMouseDown = handleStageClick;
        this.__set__selected(true);
        _dropdown.selectedIndex = _selectedIndex;
        _dropdown.scrollToIndex(_selectedIndex);
        var _loc3 = offsetX * (100 / _xscale);
        var _loc2 = offsetY * (100 / _yscale);
        gfx.managers.PopUpManager.movePopUp(this, (MovieClip)(_dropdown), this, _loc3, direction == "down" ? (__height + _loc2) : (-_dropdown.height - _loc2));
        _dropdown.visible = true;
    } // End of the function
    function configUI()
    {
        super.configUI();
        this.addEventListener("click", this, "toggleMenu");
        toggle = false;
    } // End of the function
    function changeFocus()
    {
        super.changeFocus();
        if (isOpen && _dropdown != null)
        {
            this.close();
        } // end if
    } // End of the function
    function updateSelectedItem()
    {
        this.invalidateData();
    } // End of the function
    function updateLabel()
    {
        this.__set__label(this.itemToLabel(selectedItem));
    } // End of the function
    function populateText(item)
    {
        selectedItem = item;
        this.updateLabel();
        this.dispatchEvent({type: "change", index: _selectedIndex, data: item});
    } // End of the function
    function handleChange(event)
    {
        var _loc2 = _dropdown.selectedIndex;
        _selectedIndex = _loc2;
        this.close();
        this.updateSelectedItem();
    } // End of the function
    function onDataChange(event)
    {
        this.updateSelectedItem();
    } // End of the function
    function toggleMenu(event)
    {
        this.__set__focused(true);
        !_selected ? (this.open()) : (this.close());
    } // End of the function
    function handleStageClick(event)
    {
        if (this.hitTest(_root._xmouse, _root._ymouse, true))
        {
            return;
        } // end if
        this.close();
    } // End of the function
    function hitTest(x, y, shapeFlag)
    {
        return (super.hitTest(x, y, shapeFlag) || (_dropdown && isOpen ? (_dropdown.hitTest(x, y, shapeFlag)) : (false)));
    }
	*/
    var isOpen = false;
    var direction = "down";
    var _dropdownWidth = -1;
    var _rowCount = 5;
    var _labelField = "label";
    var _selectedIndex = -1;
    var margin = 1;
    var paddingTop = 0;
    var paddingBottom = 0;
    var paddingLeft = 0;
    var paddingRight = 0;
    var thumbOffsetTop = 0;
    var thumbOffsetBottom = 0;
    var thumbSizeFactor = 1;
    var offsetX = 0;
    var offsetY = 0;
    var extent = 0;
    var _dropdown = null;
} // End of Class
