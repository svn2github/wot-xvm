/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar.components.ClanIcon
{
    import flash.display.*;
    import flash.events.Event;
    import flash.utils.Dictionary;
    import com.xvm.misc.IconLoader;
    import com.xvm.*;
    import com.xvm.types.cfg.CClanIcon;

    public class ClanIcon extends Sprite
    {
        private static var s_playersIconSources:Dictionary = new Dictionary();;

        private var cfg:CClanIcon;
        private var icon:IconLoader;
        private var nick:String;

        public function ClanIcon(cfg:CClanIcon, dx:Number, dy:Number, team:Number, nick:String, clan:String)
        {
            this.cfg = cfg;
            this.nick = nick;

            x = dx + (team == Defines.TEAM_ALLY ? cfg.x : -cfg.xr);
            if (team == Defines.TEAM_ENEMY)
                x -= cfg.w;
            y = dy + (team == Defines.TEAM_ALLY ? cfg.y : cfg.yr);
return;
            icon = new IconLoader(this, completeLoadIcon);
            icon.name = "clanIcon";
            icon.x = 0;
            icon.y = 0;
            icon.alpha = isFinite(cfg.alpha) ? cfg.alpha : 100;
            icon.visible = false;
            addChild(icon);

            //icon["claninfo"] = { w: cfg.w, h: cfg.h };
            //icon["holder"] = holder;
            //icon["iconloader"] = il;

            setSource(nick, clan);
        }

        public function setSource(nick: String, clan: String):void
        {
            // Load order: nick -> clan -> default clan -> default nick
            var paths:Vector.<String> = new Vector.<String>();
            var src:String = s_playersIconSources[nick];
            if (src != null)
            {
                if (src == "")
                {
                    icon.unload();
                    return;
                }
                paths.push(s_playersIconSources[nick]);
            }
            else
            {
                var prefix:String = Defines.XVMRES_ROOT + Config.config.battle.clanIconsFolder + Config.gameRegion + "/";
                paths.push(prefix + "nick/" + nick + ".png");
                if (clan)
                {
                    paths.push(prefix + "clan/" + clan + ".png");
                    paths.push(prefix + "clan/default.png");
                }
                paths.push(prefix + "nick/default.png");
            }

            icon.setSources(paths);
        }

        private function completeLoadIcon(e:Event):void
        {
            icon.autoSize = false;
            icon.width = cfg.w;
            icon.height = cfg.h;
            icon.invalidate();
            icon.visible = true;
            if (!s_playersIconSources.hasOwnProperty(nick))
                s_playersIconSources[nick] = icon.source;

            //icon["holder"].onEnterFrame = function()
            //{
                //if (icon.invalidationIntervalID)
                    //return;
                //this.onEnterFrame = null;
                //this.stop();
                //icon.visible = true;
            //}
        }
    }
}
