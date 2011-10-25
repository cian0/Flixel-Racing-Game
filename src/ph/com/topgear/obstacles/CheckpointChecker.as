package ph.com.topgear.obstacles
{

	import org.flixel.*;

	public class CheckpointChecker	extends FlxSprite

	{
		[Embed(source='../../../../assets/32x32.png')]

		protected var ImgCheckpoint:Class;
		public var lapNo:uint;
		
		public function CheckpointChecker(X:Number,Y:Number):void

		{
			super(X, Y);
			loadGraphic(ImgCheckpoint, true, true, 32, 32);
		}
	}
}