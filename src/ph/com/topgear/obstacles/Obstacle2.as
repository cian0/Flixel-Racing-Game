package ph.com.topgear.obstacles
{

	import org.flixel.*;

	public class Obstacle2 extends FlxSprite

	{
		[Embed(source='../../../../assets/32x32.png')]

		protected var ImgObstacle2:Class;
		
		public function Obstacle2(X:Number,Y:Number):void

		{
			super(X, Y);
			loadGraphic(ImgObstacle2, true, true, 32, 32);
		}
		
		override public function update():void
		{
			super.update();
		}
	}
}