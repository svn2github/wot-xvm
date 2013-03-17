class net.wargaming.notification.MessageDialog extends net.wargaming.Dialog
{
    var dragBar, invalidate, title, message, messageField, wndBg, cancelBtn, submitBtn, submitLabel, cancelLabel;
    /*function MessageDialog()
    {
        super();
    } // End of the function
    static function show(dialog, focusSubmit, sumbitVisible, store)
    {
        if (dialog == undefined)
        {
            return;
        } // end if
        var _loc3 = {title: "#dialogs:" + dialog + "/title", message: "#dialogs:" + dialog + "/message", submitLabel: "#dialogs:" + dialog + "/submit", cancelLabel: "#dialogs:" + dialog + "/cancel"};
        if (typeof(sumbitVisible) == "boolean")
        {
            _loc3.sumbitVisible = sumbitVisible;
        } // end if
        if (typeof(focusSubmit) == "boolean")
        {
            _loc3.focusSubmit = focusSubmit;
        } // end if
        net.wargaming.managers.ToolTipManager.__get__instance().hide();
        return (net.wargaming.Dialog.show(_root, net.wargaming.notification.MessageDialog.messageDialogSource, _loc3, true, store));
    } // End of the function
    function configUI()
    {
        super.configUI();
        if (dragBar != null && !dragable)
        {
            dragBar.onPress = function ()
            {
            };
            dragBar.onRelease = function ()
            {
            };
        } // end if
    } // End of the function
    function draw()
    {
        if (dragBar != null && !dragBar.initialized)
        {
            this.invalidate();
            return;
        }
        else
        {
            super.draw();
            if (title.length > 0 && dragBar != null)
            {
                dragBar.textField.text = title;
            } // end if
        } // end else if
    } // End of the function
    function populateUI()
    {
        super.populateUI();
        if (title && dragBar != null)
        {
            dragBar.text = title;
        } // end if
        if (message && messageField != null)
        {
            messageField.autoSize = true;
            messageField.html = true;
            messageField.htmlText = message;
            if (messageField.textHeight > 84 && this instanceof net.wargaming.notification.MessageDialog)
            {
                var _loc3 = Math.round(messageField.textHeight);
                wndBg.wndBgForm._height = _loc3 + 11;
                cancelBtn._y = submitBtn._y = wndBg.wndBgForm._y + wndBg.wndBgForm._height + 1;
                wndBg.wndBg._height = wndBg.wndBgForm._y + wndBg.wndBgForm._height + 40;
            } // end if
        } // end if
        if (submitBtn != null)
        {
            submitBtn.__set__visible(sumbitVisible);
            if (focusSubmit)
            {
                Selection.setFocus(submitBtn);
            }
            else
            {
                Selection.setFocus(cancelBtn);
            } // end else if
            if (submitLabel)
            {
                submitBtn.__set__label(submitLabel);
            } // end if
        } // end if
        if (cancelLabel && cancelBtn != null)
        {
            cancelBtn.__set__label(cancelLabel);
        } // end if
    } */
    static var messageDialogSource = "MessageDialog";
	static var show = null;
    var sumbitVisible = true;
    var focusSubmit = false;
    var dragable = false;
    var html = false;
} // End of Class
