package image
{
	import flash.events.MouseEvent;
	
	import mx.controls.Image;
	
	public class FadedImage extends Image
	{
		public function FadedImage()
		{
			super();
			this.addEventListener(MouseEvent.CLICK, onClick);
		}

		private function onClick(event:MouseEvent):void
		{
			if(!_editable){
				event.preventDefault();
				event.stopImmediatePropagation()
			}
		}
		
		public var fadeAlpha:Number = 0.4;
		
		private var _editable:Boolean = true;
		public function set editable(b:Boolean):void
		{
		_editable = b;	
		}
		
		public function get editable():Boolean
		{
			return _editable;	
		}
		
		public function set faded(value:Boolean):void
		{
			
			if(value)
			{
				this.alpha = fadeAlpha;
			}
			else
			{
				this.alpha = 1;
			}
		}
		override public function set enabled(value:Boolean):void
		{
			super.enabled = value;
			if(value)
			{
				this.alpha = 1;
				this.buttonMode= true;
				this.useHandCursor= true;
			}
			else
			{
				this.alpha = fadeAlpha;
				this.buttonMode= false;
				this.useHandCursor= false;
			}
		}
	}
}