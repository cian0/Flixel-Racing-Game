package

{

	import org.flixel.*;

	public class RoadBlocks extends FlxSprite

	{
		[Embed(source='assets/32x32.png')]

		protected var ImgPlayer:Class;
		
		public function RoadBlocks(X:Number,Y:Number):void

		{
			super(X, Y);
			loadGraphic(ImgPlayer, true, true, 32, 32);
		}
		
		override public function update():void
		{
			super.update();
		}
	}
}