package

{

	import org.flixel.*;

	public class RoadBlock extends FlxSprite

	{
		[Embed(source='assets/hut.png')]

		protected var ImgPlayer:Class;
		
		public function RoadBlock(X:Number,Y:Number):void

		{
			super(X, Y);
			loadGraphic(ImgPlayer, true, true, 24, 24);
		}
		
		override public function update():void
		{
			super.update();
		}
	}
}