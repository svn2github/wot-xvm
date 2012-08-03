﻿/**
* DisplayObjectWrapper by Grant Skinner. February 1, 2007
* Visit www.gskinner.com/blog for documentation, updates and more free code.
*
* You may distribute this class freely, provided you do not modify or remove this header.
*/

package utils
{
	import flash.display.DisplayObject;
	import mx.core.UIComponent;
	import mx.core.IUIComponent;
	import flash.events.Event;
	import mx.core.mx_internal;
	import flash.system.ApplicationDomain;

	[DefaultProperty("content")]
	public class DisplayObjectWrapper extends UIComponent
	{

		private var _content:DisplayObject;
		private var _watchSize:Boolean;

		public function DisplayObjectWrapper(p_content:*=null,p_watchSize:Boolean=true) {
			content = p_content;
			watchSize = p_watchSize;
			super();
		}

		override public function set width(value:Number):void {
			_content.width = value;
			super.width = value;
		}

		override public function set height(value:Number):void {
			_content.height = value;
			super.height = value;
		}

		[Inspectable]
		public function set watchSize(value:Boolean):void {
			_watchSize = value;

			if (_watchSize) {
				addEventListener(Event.ENTER_FRAME,checkSize);
			} else {
				removeEventListener(Event.ENTER_FRAME,checkSize);
			}

		}
		public function get watchSize():Boolean {
			return _watchSize;
		}

		[Inspectable]
		public function set content(p_content:*):void {
			if (_content != null) {
				removeChild(_content);
			}

			if (p_content is String) {
				try {
					p_content = ApplicationDomain.currentDomain.getDefinition(p_content);
				} catch (e:*) {}
			}
			if (p_content is Class) {
				p_content = new p_content();
			}
			_content = p_content as DisplayObject;
			if (_content != null) {
				addChild(_content);
			}
			invalidateSize();
		}
		public function get content():DisplayObject {
			return _content;
		}


		override protected function measure():void {
			measuredWidth = (_content) ? _content.width : 0;
			measuredHeight = (_content) ? _content.height : 0;
		}

		private function checkSize(evt:Event):void {
			if (mx_internal::_width != contentWidth || mx_internal::_height != contentHeight) {
				invalidateSize();
			}
		}

		private function get contentWidth():Number {
			return (_content) ? _content.width : 0;
		}

		private function get contentHeight():Number {
			return (_content) ? _content.height : 0;
		}

	}
}