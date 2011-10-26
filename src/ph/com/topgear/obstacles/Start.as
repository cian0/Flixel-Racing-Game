package ph.com.topgear.obstacles
{

	import org.flixel.*;

	public class Start	extends FlxSprite

	{
		[Embed(source='../../../../assets/start.png')]

		protected var ImgStart:Class;
		public var lapNo:uint = 0;
		
		public function Start(X:Number,Y:Number):void

		{
			super(X, Y);
			loadGraphic(ImgStart, false, true, 20 , 143);
			
			this.height = 143;
		}
		
		override public function update():void
		{
			super.update();
		}
	}
}