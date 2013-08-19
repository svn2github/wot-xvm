﻿/**
 *
 * @author LEMAXHO
 */
import com.xvm.Locale;
import com.xvm.Utils;
import wot.crew.CrewLoader;

class wot.crew.tankmen.CrewItemRenderer
{
    /////////////////////////////////////////////////////////////////
    // wrapped methods

    private var wrapper:net.wargaming.tankmen.CrewItemRenderer;
    private var base:net.wargaming.tankmen.CrewItemRenderer;

    public function CrewItemRenderer(wrapper:net.wargaming.tankmen.CrewItemRenderer, base:net.wargaming.tankmen.CrewItemRenderer)
    {
        this.wrapper = wrapper;
        this.base = base;
        Utils.Timeout(this, CrewItemRendererCtor, 1);
    }

    function configUI()
    {
        return this.configUIImpl.apply(this, arguments);
    }

    // wrapped methods
    /////////////////////////////////////////////////////////////////

    private function CrewItemRendererCtor()
    {
        Utils.TraceXvmModule("Crew");
    }

    private function configUIImpl()
    {
        base.configUI();
        wrapper.onMouseDownFuncBase = wrapper.onMouseDownFunc;
        wrapper.onMouseDownFunc =  onMouseDownFuncXVM;
        wrapper.onMouseDown = wrapper.onMouseDownFunc;
    }

    /////////////////////////////////////////////////////////////////
    // CONTEXT: wrapper

    private function onMouseDownFuncXVM(button, target)
    {
        var context:net.wargaming.tankmen.CrewItemRenderer = net.wargaming.tankmen.CrewItemRenderer(this);

        context.onMouseDownFuncBase.apply(context, arguments);

        if (context.disabled || context.data.tankmanID != null)
            return;
        if (Mouse.RIGHT != button || !context.hitTest(_root._xmouse, _root._ymouse, true))
            return;

        // check for empty space click
        var top = Mouse.getTopMostEntity();
        var ok = false;
        while (top)
        {
            if (top == this)
            {
                ok = true;
                break;
            }
            top = top._parent;
        }
        if (!ok)
            return;

        var menu = net.wargaming.managers.ContextMenuManager.instance.show([
            [{id: "PutOwnCrew", label: Locale.get("PutOwnCrew") }],
            [net.wargaming.controls.ContextMenu.SEPARATE],
            [{id: "PutBestCrew", label: Locale.get("PutBestCrew") }]
            ], false, {id: context.data.tankmanID});
        menu.addEventListener("action", CrewLoader.PutCrewAction);
    }

    // CONTEXT: wrapper
    /////////////////////////////////////////////////////////////////
}
