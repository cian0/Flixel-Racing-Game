package

{

	import org.flixel.*;

	[SWF(width="800", height="600", backgroundColor="#000000")]

	[Frame(factoryClass="Preloader")]



	public class FlixelGame extends FlxGame

	{

		public function FlixelGame()

		{
			super(800,600,MenuState,1);
		}

	}

}

