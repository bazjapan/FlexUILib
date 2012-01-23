package image
{
	import mx.controls.Image;
	
	public class FadedImage extends Image
	{
		public function FadedImage()
		{
			super();
		}
		
		public var fadeAlpha:Number = 0.4;
		
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