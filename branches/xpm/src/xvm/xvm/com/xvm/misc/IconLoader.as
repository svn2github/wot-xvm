/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.misc
{
    import flash.events.Event;
    import net.wg.gui.components.controls.UILoaderAlt;

    public class IconLoader extends UILoaderAlt
    {
      private static var s_failIcons:Vector.<String> = new Vector.<String>();

      private var m_owner: Object;
      private var m_completeFunc: Function;
      private var m_altIcons:Vector.<String>;
      private var m_currentIndex: Number;

      public function IconLoader(target:Object, completeFunc:Function)
      {
        m_owner = target;
        m_completeFunc = completeFunc;
        addEventListener("ioError", errorLoad);
        addEventListener("complete", completeLoad);
      }

      public function setSources(altIcons:Vector.<String>, useNoImage:Boolean = false):void
      {
        m_altIcons = new Vector.<String>();

        var len:int = altIcons.length;
        for (var i:int = 0; i < len; ++i)
        {
          var icon:String = altIcons[i];
          if (s_failIcons.indexOf(icon) < 0)
            m_altIcons.push(icon);
        }

        if (sourceAlt != "")
        {
          if (s_failIcons.indexOf(sourceAlt) < 0)
            m_altIcons.push(sourceAlt);
          sourceAlt = "";
        }

        if (useNoImage)
            m_altIcons.push("../maps/icons/vehicle/contour/noImage.png");

        m_currentIndex = 0;

        icon.source = currentIcon;
      }

      public function get currentIcon():String
      {
        return (m_currentIndex < m_altIcons.length) ? m_altIcons[m_currentIndex] : "";
      }

      private function errorLoad(e:Event):void
      {
        m_currentIndex++;
        var next:String = currentIcon;
        s_failIcons.push(source);
        source = next;
        if (next == "" && m_owner != null && m_completeFunc != null)
        {
            source = "";
            m_completeFunc.call(m_owner, e);
        }
      }

      private function completeLoad(e:Event):void
      {
        if (m_owner != null && m_completeFunc != null)
          m_completeFunc.call(m_owner, e);
      }
    }
}
