package

{

	import org.flixel.*;

	[SWF(width="800", height="600", backgroundColor="#000000")]

	[Frame(factoryClass="Preloader")]



	public class FlixelGame extends FlxGame

	{
		public static var gameStart:Boolean = false;
		public static var currentRacingTime:String = "";
		public static var stopTimer:Boolean= false;
		public function FlixelGame()
		{
			//test change. 2
			
			super(800,600,MenuState,1);
		}
	}

}

