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
    import net.wg.gui.lobby.settings.*;
    
    public dynamic class GameSettings extends net.wg.gui.lobby.settings.GameSettings
    {
        public function GameSettings()
        {
            super();
            this.__setProp_fieldSetChat_GameSettings_fieldSets_0();
            this.__setProp_fieldSetInstructionPanel_GameSettings_fieldSets_0();
            this.__setProp_fieldSetBattleTypes_GameSettings_fieldSets_0();
            this.__setProp_fieldSetVibro_GameSettings_fieldSets_0();
            this.__setProp_vibroGainValue_GameSettings_labels_0();
            this.__setProp_vibroEngineValue_GameSettings_labels_0();
            this.__setProp_vibroAccelerationValue_GameSettings_labels_0();
            this.__setProp_vibroShotsValue_GameSettings_labels_0();
            this.__setProp_vibroHitsValue_GameSettings_labels_0();
            this.__setProp_vibroCollisionsValue_GameSettings_labels_0();
            this.__setProp_vibroDamageValue_GameSettings_labels_0();
            this.__setProp_vibroGUIValue_GameSettings_labels_0();
            this.__setProp_enableOlFilterCheckbox_GameSettings_controls_0();
            this.__setProp_minimapAlphaSlider_GameSettings_controls_0();
            this.__setProp_enableSpamFilterCheckbox_GameSettings_controls_0();
            this.__setProp_showDateMessageCheckbox_GameSettings_controls_0();
            this.__setProp_showTimeMessageCheckbox_GameSettings_controls_0();
            this.__setProp_invitesFromFriendsOnlyCheckbox_GameSettings_controls_0();
            this.__setProp_enableStoreCwsCheckbox_GameSettings_controls_0();
            this.__setProp_enableStoreMwsCheckbox_GameSettings_controls_0();
            this.__setProp_ppShowLevelsCheckbox_GameSettings_controls_0();
            this.__setProp_gameplay_ctfCheckbox_GameSettings_controls_0();
            this.__setProp_gameplay_dominationCheckbox_GameSettings_controls_0();
            this.__setProp_gameplay_assaultCheckbox_GameSettings_controls_0();
            this.__setProp_enablePostMortemEffectCheckbox_GameSettings_controls_0();
            this.__setProp_dynamicCameraCheckbox_GameSettings_controls_0();
            this.__setProp_replayEnabledCheckbox_GameSettings_controls_0();
            this.__setProp_useServerAimCheckbox_GameSettings_controls_0();
            this.__setProp_vibroGainSlider_GameSettings_controls_0();
            this.__setProp_vibroEngineSlider_GameSettings_controls_0();
            this.__setProp_vibroAccelerationSlider_GameSettings_controls_0();
            this.__setProp_vibroShotsSlider_GameSettings_controls_0();
            this.__setProp_vibroHitsSlider_GameSettings_controls_0();
            this.__setProp_vibroCollisionsSlider_GameSettings_controls_0();
            this.__setProp_vibroDamageSlider_GameSettings_controls_0();
            this.__setProp_vibroGUISlider_GameSettings_controls_0();
            this.__setProp_storeReceiverInBattleCheckbox_GameSettings_controls_0();
            this.__setProp_showVehiclesCounterCheckbox_GameSettings_controls_0();
            return;
        }

        internal function __setProp_fieldSetChat_GameSettings_fieldSets_0():*
        {
            try 
            {
                fieldSetChat["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            fieldSetChat.enabled = true;
            fieldSetChat.enableInitCallback = false;
            fieldSetChat.label = "";
            fieldSetChat.margin = 5;
            fieldSetChat.showLabel = true;
            fieldSetChat.visible = true;
            try 
            {
                fieldSetChat["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_fieldSetInstructionPanel_GameSettings_fieldSets_0():*
        {
            try 
            {
                fieldSetInstructionPanel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            fieldSetInstructionPanel.enabled = true;
            fieldSetInstructionPanel.enableInitCallback = false;
            fieldSetInstructionPanel.label = "";
            fieldSetInstructionPanel.margin = 5;
            fieldSetInstructionPanel.showLabel = true;
            fieldSetInstructionPanel.visible = true;
            try 
            {
                fieldSetInstructionPanel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_fieldSetBattleTypes_GameSettings_fieldSets_0():*
        {
            try 
            {
                fieldSetBattleTypes["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            fieldSetBattleTypes.enabled = true;
            fieldSetBattleTypes.enableInitCallback = false;
            fieldSetBattleTypes.label = "";
            fieldSetBattleTypes.margin = 5;
            fieldSetBattleTypes.showLabel = true;
            fieldSetBattleTypes.visible = true;
            try 
            {
                fieldSetBattleTypes["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_fieldSetVibro_GameSettings_fieldSets_0():*
        {
            try 
            {
                fieldSetVibro["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            fieldSetVibro.enabled = true;
            fieldSetVibro.enableInitCallback = false;
            fieldSetVibro.label = "";
            fieldSetVibro.margin = 5;
            fieldSetVibro.showLabel = true;
            fieldSetVibro.visible = true;
            try 
            {
                fieldSetVibro["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroGainValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroGainValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroGainValue.autoSize = "none";
            vibroGainValue.enabled = true;
            vibroGainValue.enableInitCallback = false;
            vibroGainValue.text = "n/a";
            vibroGainValue.textAlign = "none";
            vibroGainValue.visible = true;
            try 
            {
                vibroGainValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroEngineValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroEngineValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroEngineValue.autoSize = "none";
            vibroEngineValue.enabled = true;
            vibroEngineValue.enableInitCallback = false;
            vibroEngineValue.text = "n/a";
            vibroEngineValue.textAlign = "none";
            vibroEngineValue.visible = true;
            try 
            {
                vibroEngineValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroAccelerationValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroAccelerationValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroAccelerationValue.autoSize = "none";
            vibroAccelerationValue.enabled = true;
            vibroAccelerationValue.enableInitCallback = false;
            vibroAccelerationValue.text = "n/a";
            vibroAccelerationValue.textAlign = "none";
            vibroAccelerationValue.visible = true;
            try 
            {
                vibroAccelerationValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroShotsValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroShotsValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroShotsValue.autoSize = "none";
            vibroShotsValue.enabled = true;
            vibroShotsValue.enableInitCallback = false;
            vibroShotsValue.text = "n/a";
            vibroShotsValue.textAlign = "none";
            vibroShotsValue.visible = true;
            try 
            {
                vibroShotsValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroHitsValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroHitsValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroHitsValue.autoSize = "none";
            vibroHitsValue.enabled = true;
            vibroHitsValue.enableInitCallback = false;
            vibroHitsValue.text = "n/a";
            vibroHitsValue.textAlign = "none";
            vibroHitsValue.visible = true;
            try 
            {
                vibroHitsValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroCollisionsValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroCollisionsValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroCollisionsValue.autoSize = "none";
            vibroCollisionsValue.enabled = true;
            vibroCollisionsValue.enableInitCallback = false;
            vibroCollisionsValue.text = "n/a";
            vibroCollisionsValue.textAlign = "none";
            vibroCollisionsValue.visible = true;
            try 
            {
                vibroCollisionsValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroDamageValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroDamageValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroDamageValue.autoSize = "none";
            vibroDamageValue.enabled = true;
            vibroDamageValue.enableInitCallback = false;
            vibroDamageValue.text = "n/a";
            vibroDamageValue.textAlign = "none";
            vibroDamageValue.visible = true;
            try 
            {
                vibroDamageValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroGUIValue_GameSettings_labels_0():*
        {
            try 
            {
                vibroGUIValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroGUIValue.autoSize = "none";
            vibroGUIValue.enabled = true;
            vibroGUIValue.enableInitCallback = false;
            vibroGUIValue.text = "n/a";
            vibroGUIValue.textAlign = "none";
            vibroGUIValue.visible = true;
            try 
            {
                vibroGUIValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_enableOlFilterCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                enableOlFilterCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            enableOlFilterCheckbox.autoSize = "none";
            enableOlFilterCheckbox.data = "";
            enableOlFilterCheckbox.enabled = true;
            enableOlFilterCheckbox.enableInitCallback = false;
            enableOlFilterCheckbox.focusable = true;
            enableOlFilterCheckbox.label = "checkBox";
            enableOlFilterCheckbox.selected = false;
            enableOlFilterCheckbox.soundId = "";
            enableOlFilterCheckbox.soundType = "";
            enableOlFilterCheckbox.visible = true;
            try 
            {
                enableOlFilterCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_minimapAlphaSlider_GameSettings_controls_0():*
        {
            try 
            {
                minimapAlphaSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            minimapAlphaSlider.enabled = true;
            minimapAlphaSlider.enableInitCallback = false;
            minimapAlphaSlider.focusable = true;
            minimapAlphaSlider.liveDragging = true;
            minimapAlphaSlider.maximum = 65;
            minimapAlphaSlider.minimum = 0;
            minimapAlphaSlider.snapInterval = 1;
            minimapAlphaSlider.snapping = true;
            minimapAlphaSlider.undefinedDisabled = false;
            minimapAlphaSlider.value = 0;
            minimapAlphaSlider.visible = true;
            try 
            {
                minimapAlphaSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_enableSpamFilterCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                enableSpamFilterCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            enableSpamFilterCheckbox.autoSize = "none";
            enableSpamFilterCheckbox.data = "";
            enableSpamFilterCheckbox.enabled = true;
            enableSpamFilterCheckbox.enableInitCallback = false;
            enableSpamFilterCheckbox.focusable = true;
            enableSpamFilterCheckbox.label = "checkBox";
            enableSpamFilterCheckbox.selected = false;
            enableSpamFilterCheckbox.soundId = "";
            enableSpamFilterCheckbox.soundType = "";
            enableSpamFilterCheckbox.visible = true;
            try 
            {
                enableSpamFilterCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_showDateMessageCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                showDateMessageCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            showDateMessageCheckbox.autoSize = "none";
            showDateMessageCheckbox.data = "";
            showDateMessageCheckbox.enabled = true;
            showDateMessageCheckbox.enableInitCallback = false;
            showDateMessageCheckbox.focusable = true;
            showDateMessageCheckbox.label = "checkBox";
            showDateMessageCheckbox.selected = false;
            showDateMessageCheckbox.soundId = "";
            showDateMessageCheckbox.soundType = "";
            showDateMessageCheckbox.visible = true;
            try 
            {
                showDateMessageCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_showTimeMessageCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                showTimeMessageCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            showTimeMessageCheckbox.autoSize = "none";
            showTimeMessageCheckbox.data = "";
            showTimeMessageCheckbox.enabled = true;
            showTimeMessageCheckbox.enableInitCallback = false;
            showTimeMessageCheckbox.focusable = true;
            showTimeMessageCheckbox.label = "checkBox";
            showTimeMessageCheckbox.selected = false;
            showTimeMessageCheckbox.soundId = "";
            showTimeMessageCheckbox.soundType = "";
            showTimeMessageCheckbox.visible = true;
            try 
            {
                showTimeMessageCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_invitesFromFriendsOnlyCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                invitesFromFriendsOnlyCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            invitesFromFriendsOnlyCheckbox.autoSize = "none";
            invitesFromFriendsOnlyCheckbox.data = "";
            invitesFromFriendsOnlyCheckbox.enabled = true;
            invitesFromFriendsOnlyCheckbox.enableInitCallback = false;
            invitesFromFriendsOnlyCheckbox.focusable = true;
            invitesFromFriendsOnlyCheckbox.label = "checkBox";
            invitesFromFriendsOnlyCheckbox.selected = false;
            invitesFromFriendsOnlyCheckbox.soundId = "";
            invitesFromFriendsOnlyCheckbox.soundType = "";
            invitesFromFriendsOnlyCheckbox.visible = true;
            try 
            {
                invitesFromFriendsOnlyCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_enableStoreCwsCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                enableStoreCwsCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            enableStoreCwsCheckbox.autoSize = "none";
            enableStoreCwsCheckbox.data = "";
            enableStoreCwsCheckbox.enabled = true;
            enableStoreCwsCheckbox.enableInitCallback = false;
            enableStoreCwsCheckbox.focusable = true;
            enableStoreCwsCheckbox.label = "checkBox";
            enableStoreCwsCheckbox.selected = false;
            enableStoreCwsCheckbox.soundId = "";
            enableStoreCwsCheckbox.soundType = "";
            enableStoreCwsCheckbox.visible = true;
            try 
            {
                enableStoreCwsCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_enableStoreMwsCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                enableStoreMwsCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            enableStoreMwsCheckbox.autoSize = "none";
            enableStoreMwsCheckbox.data = "";
            enableStoreMwsCheckbox.enabled = true;
            enableStoreMwsCheckbox.enableInitCallback = false;
            enableStoreMwsCheckbox.focusable = true;
            enableStoreMwsCheckbox.label = "checkBox";
            enableStoreMwsCheckbox.selected = false;
            enableStoreMwsCheckbox.soundId = "";
            enableStoreMwsCheckbox.soundType = "";
            enableStoreMwsCheckbox.visible = true;
            try 
            {
                enableStoreMwsCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_ppShowLevelsCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                ppShowLevelsCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            ppShowLevelsCheckbox.autoSize = "none";
            ppShowLevelsCheckbox.data = "";
            ppShowLevelsCheckbox.enabled = true;
            ppShowLevelsCheckbox.enableInitCallback = false;
            ppShowLevelsCheckbox.focusable = true;
            ppShowLevelsCheckbox.label = "checkBox";
            ppShowLevelsCheckbox.selected = false;
            ppShowLevelsCheckbox.soundId = "";
            ppShowLevelsCheckbox.soundType = "";
            ppShowLevelsCheckbox.visible = true;
            try 
            {
                ppShowLevelsCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gameplay_ctfCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                gameplay_ctfCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gameplay_ctfCheckbox.autoSize = "none";
            gameplay_ctfCheckbox.data = "";
            gameplay_ctfCheckbox.enabled = true;
            gameplay_ctfCheckbox.enableInitCallback = false;
            gameplay_ctfCheckbox.focusable = true;
            gameplay_ctfCheckbox.label = "checkBox";
            gameplay_ctfCheckbox.selected = false;
            gameplay_ctfCheckbox.soundId = "";
            gameplay_ctfCheckbox.soundType = "";
            gameplay_ctfCheckbox.visible = true;
            try 
            {
                gameplay_ctfCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gameplay_dominationCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                gameplay_dominationCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gameplay_dominationCheckbox.autoSize = "none";
            gameplay_dominationCheckbox.data = "";
            gameplay_dominationCheckbox.enabled = true;
            gameplay_dominationCheckbox.enableInitCallback = false;
            gameplay_dominationCheckbox.focusable = true;
            gameplay_dominationCheckbox.label = "checkBox";
            gameplay_dominationCheckbox.selected = false;
            gameplay_dominationCheckbox.soundId = "";
            gameplay_dominationCheckbox.soundType = "";
            gameplay_dominationCheckbox.visible = true;
            try 
            {
                gameplay_dominationCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gameplay_assaultCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                gameplay_assaultCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gameplay_assaultCheckbox.autoSize = "none";
            gameplay_assaultCheckbox.data = "";
            gameplay_assaultCheckbox.enabled = true;
            gameplay_assaultCheckbox.enableInitCallback = false;
            gameplay_assaultCheckbox.focusable = true;
            gameplay_assaultCheckbox.label = "checkBox";
            gameplay_assaultCheckbox.selected = false;
            gameplay_assaultCheckbox.soundId = "";
            gameplay_assaultCheckbox.soundType = "";
            gameplay_assaultCheckbox.visible = true;
            try 
            {
                gameplay_assaultCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_enablePostMortemEffectCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                enablePostMortemEffectCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            enablePostMortemEffectCheckbox.autoSize = "none";
            enablePostMortemEffectCheckbox.data = "";
            enablePostMortemEffectCheckbox.enabled = true;
            enablePostMortemEffectCheckbox.enableInitCallback = false;
            enablePostMortemEffectCheckbox.focusable = true;
            enablePostMortemEffectCheckbox.label = "checkBox";
            enablePostMortemEffectCheckbox.selected = false;
            enablePostMortemEffectCheckbox.soundId = "";
            enablePostMortemEffectCheckbox.soundType = "";
            enablePostMortemEffectCheckbox.visible = true;
            try 
            {
                enablePostMortemEffectCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dynamicCameraCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                dynamicCameraCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dynamicCameraCheckbox.autoSize = "none";
            dynamicCameraCheckbox.data = "";
            dynamicCameraCheckbox.enabled = true;
            dynamicCameraCheckbox.enableInitCallback = false;
            dynamicCameraCheckbox.focusable = true;
            dynamicCameraCheckbox.label = "checkBox";
            dynamicCameraCheckbox.selected = false;
            dynamicCameraCheckbox.soundId = "";
            dynamicCameraCheckbox.soundType = "";
            dynamicCameraCheckbox.visible = true;
            try 
            {
                dynamicCameraCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_replayEnabledCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                replayEnabledCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            replayEnabledCheckbox.autoSize = "none";
            replayEnabledCheckbox.data = "";
            replayEnabledCheckbox.enabled = true;
            replayEnabledCheckbox.enableInitCallback = false;
            replayEnabledCheckbox.focusable = true;
            replayEnabledCheckbox.label = "checkBox";
            replayEnabledCheckbox.selected = false;
            replayEnabledCheckbox.soundId = "";
            replayEnabledCheckbox.soundType = "";
            replayEnabledCheckbox.visible = true;
            try 
            {
                replayEnabledCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_useServerAimCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                useServerAimCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            useServerAimCheckbox.autoSize = "none";
            useServerAimCheckbox.data = "";
            useServerAimCheckbox.enabled = true;
            useServerAimCheckbox.enableInitCallback = false;
            useServerAimCheckbox.focusable = true;
            useServerAimCheckbox.label = "checkBox";
            useServerAimCheckbox.selected = false;
            useServerAimCheckbox.soundId = "";
            useServerAimCheckbox.soundType = "";
            useServerAimCheckbox.visible = true;
            try 
            {
                useServerAimCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroGainSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroGainSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroGainSlider.enabled = true;
            vibroGainSlider.enableInitCallback = false;
            vibroGainSlider.focusable = true;
            vibroGainSlider.liveDragging = true;
            vibroGainSlider.maximum = 100;
            vibroGainSlider.minimum = 0;
            vibroGainSlider.snapInterval = 1;
            vibroGainSlider.snapping = true;
            vibroGainSlider.undefinedDisabled = false;
            vibroGainSlider.value = 0;
            vibroGainSlider.visible = true;
            try 
            {
                vibroGainSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroEngineSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroEngineSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroEngineSlider.enabled = true;
            vibroEngineSlider.enableInitCallback = false;
            vibroEngineSlider.focusable = true;
            vibroEngineSlider.liveDragging = true;
            vibroEngineSlider.maximum = 100;
            vibroEngineSlider.minimum = 0;
            vibroEngineSlider.snapInterval = 1;
            vibroEngineSlider.snapping = true;
            vibroEngineSlider.undefinedDisabled = false;
            vibroEngineSlider.value = 0;
            vibroEngineSlider.visible = true;
            try 
            {
                vibroEngineSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroAccelerationSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroAccelerationSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroAccelerationSlider.enabled = true;
            vibroAccelerationSlider.enableInitCallback = false;
            vibroAccelerationSlider.focusable = true;
            vibroAccelerationSlider.liveDragging = true;
            vibroAccelerationSlider.maximum = 100;
            vibroAccelerationSlider.minimum = 0;
            vibroAccelerationSlider.snapInterval = 1;
            vibroAccelerationSlider.snapping = true;
            vibroAccelerationSlider.undefinedDisabled = false;
            vibroAccelerationSlider.value = 0;
            vibroAccelerationSlider.visible = true;
            try 
            {
                vibroAccelerationSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroShotsSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroShotsSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroShotsSlider.enabled = true;
            vibroShotsSlider.enableInitCallback = false;
            vibroShotsSlider.focusable = true;
            vibroShotsSlider.liveDragging = true;
            vibroShotsSlider.maximum = 100;
            vibroShotsSlider.minimum = 0;
            vibroShotsSlider.snapInterval = 1;
            vibroShotsSlider.snapping = true;
            vibroShotsSlider.undefinedDisabled = false;
            vibroShotsSlider.value = 0;
            vibroShotsSlider.visible = true;
            try 
            {
                vibroShotsSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroHitsSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroHitsSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroHitsSlider.enabled = true;
            vibroHitsSlider.enableInitCallback = false;
            vibroHitsSlider.focusable = true;
            vibroHitsSlider.liveDragging = true;
            vibroHitsSlider.maximum = 100;
            vibroHitsSlider.minimum = 0;
            vibroHitsSlider.snapInterval = 1;
            vibroHitsSlider.snapping = true;
            vibroHitsSlider.undefinedDisabled = false;
            vibroHitsSlider.value = 0;
            vibroHitsSlider.visible = true;
            try 
            {
                vibroHitsSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroCollisionsSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroCollisionsSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroCollisionsSlider.enabled = true;
            vibroCollisionsSlider.enableInitCallback = false;
            vibroCollisionsSlider.focusable = true;
            vibroCollisionsSlider.liveDragging = true;
            vibroCollisionsSlider.maximum = 100;
            vibroCollisionsSlider.minimum = 0;
            vibroCollisionsSlider.snapInterval = 1;
            vibroCollisionsSlider.snapping = true;
            vibroCollisionsSlider.undefinedDisabled = false;
            vibroCollisionsSlider.value = 0;
            vibroCollisionsSlider.visible = true;
            try 
            {
                vibroCollisionsSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroDamageSlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroDamageSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroDamageSlider.enabled = true;
            vibroDamageSlider.enableInitCallback = false;
            vibroDamageSlider.focusable = true;
            vibroDamageSlider.liveDragging = true;
            vibroDamageSlider.maximum = 100;
            vibroDamageSlider.minimum = 0;
            vibroDamageSlider.snapInterval = 1;
            vibroDamageSlider.snapping = true;
            vibroDamageSlider.undefinedDisabled = false;
            vibroDamageSlider.value = 0;
            vibroDamageSlider.visible = true;
            try 
            {
                vibroDamageSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vibroGUISlider_GameSettings_controls_0():*
        {
            try 
            {
                vibroGUISlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vibroGUISlider.enabled = true;
            vibroGUISlider.enableInitCallback = false;
            vibroGUISlider.focusable = true;
            vibroGUISlider.liveDragging = true;
            vibroGUISlider.maximum = 100;
            vibroGUISlider.minimum = 0;
            vibroGUISlider.snapInterval = 1;
            vibroGUISlider.snapping = true;
            vibroGUISlider.undefinedDisabled = false;
            vibroGUISlider.value = 0;
            vibroGUISlider.visible = true;
            try 
            {
                vibroGUISlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_storeReceiverInBattleCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                storeReceiverInBattleCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            storeReceiverInBattleCheckbox.autoSize = "none";
            storeReceiverInBattleCheckbox.data = "";
            storeReceiverInBattleCheckbox.enabled = true;
            storeReceiverInBattleCheckbox.enableInitCallback = false;
            storeReceiverInBattleCheckbox.focusable = true;
            storeReceiverInBattleCheckbox.label = "checkBox";
            storeReceiverInBattleCheckbox.selected = false;
            storeReceiverInBattleCheckbox.soundId = "";
            storeReceiverInBattleCheckbox.soundType = "";
            storeReceiverInBattleCheckbox.visible = true;
            try 
            {
                storeReceiverInBattleCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_showVehiclesCounterCheckbox_GameSettings_controls_0():*
        {
            try 
            {
                showVehiclesCounterCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            showVehiclesCounterCheckbox.autoSize = "none";
            showVehiclesCounterCheckbox.data = "";
            showVehiclesCounterCheckbox.enabled = true;
            showVehiclesCounterCheckbox.enableInitCallback = false;
            showVehiclesCounterCheckbox.focusable = true;
            showVehiclesCounterCheckbox.label = "checkBox";
            showVehiclesCounterCheckbox.selected = false;
            showVehiclesCounterCheckbox.soundId = "";
            showVehiclesCounterCheckbox.soundType = "";
            showVehiclesCounterCheckbox.visible = true;
            try 
            {
                showVehiclesCounterCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
