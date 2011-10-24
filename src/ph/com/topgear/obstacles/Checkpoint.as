package ph.com.topgear.obstacles
{

	import org.flixel.*;

	public class Checkpoint	extends FlxSprite

	{
		/*[Embed(source='../../../../assets/32x32.png')]

		protected var ImgCheckpoint:Class;*/
		public var lapNo:uint;
		
		public function Checkpoint(X:Number,Y:Number):void

		{
			super(X, Y);
			//loadGraphic(ImgCheckpoint, true, true, 32, 32);
			
			this.makeGraphic(200, 200, 0xdeff1da9);
			if (FlxG.debug == true )
				this.alpha = .5;
			else
				this.alpha = 0;
		}
		
		override public function update():void
		{
			super.update();
		}
	}
}