package 
{
    import adobe.utils.*;
    import flash.accessibility.*;
    import flash.desktop.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.globalization.*;
    import flash.media.*;
    import flash.net.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.system.*;
    import flash.text.*;
    import flash.text.engine.*;
    import flash.text.ime.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
    import net.wg.gui.lobby.training.*;
    
    public dynamic class trainingRoom extends net.wg.gui.lobby.training.TrainingRoom
    {
        public function trainingRoom()
        {
            super();
            this.__setProp_battleIconBig_trainingRoom_bg_0();
            this.__setProp_battleIcon_trainingRoom_bg_0();
            this.__setProp_team1_trainingRoom_lists_0();
            this.__setProp_team2_trainingRoom_lists_0();
            this.__setProp_other_trainingRoom_lists_0();
            this.__setProp_inviteButton_trainingRoom_header_0();
            this.__setProp_owner_trainingRoom_header_0();
            this.__setProp_maxPlayers_trainingRoom_header_0();
            this.__setProp_timeout_trainingRoom_header_0();
            this.__setProp_startButton_trainingRoom_header_0();
            this.__setProp_settingsButton_trainingRoom_header_0();
            this.__setProp_closeButton_trainingRoom_header_0();
            this.__setProp_description_trainingRoom_decscription_0();
            this.__setProp_swapButton_trainingRoom_swapbutton_0();
            return;
        }

        internal function __setProp_battleIconBig_trainingRoom_bg_0():*
        {
            try 
            {
                battleIconBig["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            battleIconBig.enabled = true;
            battleIconBig.enableInitCallback = false;
            battleIconBig.type = "training";
            battleIconBig.visible = true;
            try 
            {
                battleIconBig["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_battleIcon_trainingRoom_bg_0():*
        {
            try 
            {
                battleIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            battleIcon.enabled = true;
            battleIcon.enableInitCallback = false;
            battleIcon.type = "training";
            battleIcon.visible = true;
            try 
            {
                battleIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_team1_trainingRoom_lists_0():*
        {
            try 
            {
                team1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            team1.enabled = true;
            team1.enableInitCallback = false;
            team1.focusable = true;
            team1.itemRendererName = "DragPlayerRenderer";
            team1.itemRendererInstanceName = "";
            team1.margin = 0;
            team1.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            team1.rowHeight = 0;
            team1.scrollBar = "ScrollBar";
            team1.useRightButton = false;
            team1.useRightButtonForSelect = false;
            team1.visible = true;
            team1.wrapping = "normal";
            try 
            {
                team1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_team2_trainingRoom_lists_0():*
        {
            try 
            {
                team2["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            team2.enabled = true;
            team2.enableInitCallback = false;
            team2.focusable = true;
            team2.itemRendererName = "DragPlayerRenderer";
            team2.itemRendererInstanceName = "";
            team2.margin = 0;
            team2.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            team2.rowHeight = 0;
            team2.scrollBar = "ScrollBar";
            team2.useRightButton = false;
            team2.useRightButtonForSelect = false;
            team2.visible = true;
            team2.wrapping = "normal";
            try 
            {
                team2["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_other_trainingRoom_lists_0():*
        {
            try 
            {
                other["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            other.columnWidth = 301;
            other.direction = "vertical";
            other.enabled = true;
            other.enableInitCallback = false;
            other.externalColumnCount = 0;
            other.focusable = true;
            other.itemRendererName = "DragPlayerRenderer";
            other.itemRendererInstanceName = "";
            other.margin = 0;
            other.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            other.paddingBottom = 0;
            other.paddingRight = 0;
            other.rowHeight = 0;
            other.scrollBar = "ScrollBar";
            other.showEmptyItems = true;
            other.visible = true;
            other.wrapping = "normal";
            try 
            {
                other["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_inviteButton_trainingRoom_header_0():*
        {
            try 
            {
                inviteButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            inviteButton.autoRepeat = false;
            inviteButton.autoSize = "none";
            inviteButton.data = "";
            inviteButton.enabled = true;
            inviteButton.enableInitCallback = false;
            inviteButton.fillPadding = 0;
            inviteButton.focusable = true;
            inviteButton.label = "#menu:training/info/inviteButton";
            inviteButton.paddingHorizontal = 5;
            inviteButton.selected = false;
            inviteButton.soundId = "";
            inviteButton.soundType = "normal";
            inviteButton.toggle = false;
            inviteButton.visible = true;
            try 
            {
                inviteButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_owner_trainingRoom_header_0():*
        {
            try 
            {
                owner["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            owner.enabled = true;
            owner.label = "owner";
            owner.shadowColor = "Black";
            owner.textAlign = "left";
            owner.textColor = 16777215;
            owner.textFont = "$FieldFont";
            owner.textSize = 14;
            owner.useHtml = false;
            owner.visible = true;
            try 
            {
                owner["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_maxPlayers_trainingRoom_header_0():*
        {
            try 
            {
                maxPlayers["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            maxPlayers.enabled = true;
            maxPlayers.label = "maxPlayers";
            maxPlayers.shadowColor = "Black";
            maxPlayers.textAlign = "left";
            maxPlayers.textColor = 16777215;
            maxPlayers.textFont = "$FieldFont";
            maxPlayers.textSize = 14;
            maxPlayers.useHtml = false;
            maxPlayers.visible = true;
            try 
            {
                maxPlayers["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_timeout_trainingRoom_header_0():*
        {
            try 
            {
                timeout["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            timeout.enabled = true;
            timeout.label = "timeout";
            timeout.shadowColor = "Black";
            timeout.textAlign = "left";
            timeout.textColor = 16777215;
            timeout.textFont = "$FieldFont";
            timeout.textSize = 14;
            timeout.useHtml = false;
            timeout.visible = true;
            try 
            {
                timeout["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_startButton_trainingRoom_header_0():*
        {
            try 
            {
                startButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            startButton.autoRepeat = false;
            startButton.autoSize = "none";
            startButton.data = "";
            startButton.enabled = true;
            startButton.enableInitCallback = false;
            startButton.fillPadding = 0;
            startButton.focusable = true;
            startButton.label = "#menu:training/info/startButton";
            startButton.paddingHorizontal = 5;
            startButton.selected = false;
            startButton.soundId = "";
            startButton.soundType = "normal";
            startButton.toggle = false;
            startButton.visible = true;
            try 
            {
                startButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_settingsButton_trainingRoom_header_0():*
        {
            try 
            {
                settingsButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            settingsButton.autoRepeat = false;
            settingsButton.autoSize = "none";
            settingsButton.data = "";
            settingsButton.enabled = true;
            settingsButton.enableInitCallback = false;
            settingsButton.fillPadding = 0;
            settingsButton.focusable = true;
            settingsButton.label = "#menu:training/info/settingsButton";
            settingsButton.paddingHorizontal = 5;
            settingsButton.selected = false;
            settingsButton.soundId = "";
            settingsButton.soundType = "normal";
            settingsButton.toggle = false;
            settingsButton.visible = true;
            try 
            {
                settingsButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_closeButton_trainingRoom_header_0():*
        {
            try 
            {
                closeButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeButton.autoRepeat = false;
            closeButton.autoSize = "none";
            closeButton.data = "";
            closeButton.enabled = true;
            closeButton.enableInitCallback = false;
            closeButton.fillPadding = 0;
            closeButton.focusable = true;
            closeButton.label = "#menu:training/info/deleteButton";
            closeButton.paddingHorizontal = 5;
            closeButton.selected = false;
            closeButton.soundId = "";
            closeButton.soundType = "normal";
            closeButton.toggle = false;
            closeButton.visible = true;
            try 
            {
                closeButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_description_trainingRoom_decscription_0():*
        {
            try 
            {
                description["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            description.actAsButton = false;
            description.autoScroll = false;
            description.defaultText = "";
            description.displayAsPassword = false;
            description.editable = false;
            description.enabled = true;
            description.enableInitCallback = false;
            description.focusable = true;
            description.maxChars = 0;
            description.minThumbSize = 1;
            description.scrollBar = "ScrollBar";
            description.showBgForm = false;
            description.text = "";
            description.thumbOffset = {"top":0, "bottom":0};
            description.visible = true;
            try 
            {
                description["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_swapButton_trainingRoom_swapbutton_0():*
        {
            try 
            {
                swapButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            swapButton.autoRepeat = false;
            swapButton.autoSize = "none";
            swapButton.data = "";
            swapButton.enabled = true;
            swapButton.enableInitCallback = false;
            swapButton.focusable = true;
            swapButton.label = "";
            swapButton.selected = false;
            swapButton.soundId = "";
            swapButton.soundType = "arrow";
            swapButton.toggle = false;
            swapButton.visible = true;
            try 
            {
                swapButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
