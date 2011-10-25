package

{

	import org.flixel.*;



	public class MenuState extends FlxState

	{

		override public function create():void

		{

			var t:FlxText;

			t = new FlxText(0,FlxG.height/2-10,FlxG.width,"Topgear Philippines Racing Template");

			t.size = 16;

			t.alignment = "center";

			add(t);

			t = new FlxText(FlxG.width/2-50,FlxG.height-20,100,"click to play");

			t.alignment = "center";

			add(t);
			
			var t2:FlxText;

			t2 = new FlxText(0,FlxG.height/2 + 30,FlxG.width,"Controls are UP, DOWN, LEFT, RIGHT. SPACE to break.");

			t2.alignment = "center";
			t2.size = 16;
			add(t2);

			FlxG.mouse.show();

		}



		override public function update():void

		{

			super.update();



			if(FlxG.mouse.justPressed())

			{

				FlxG.mouse.hide();

				FlxG.switchState(new PlayState());

			}

		}

	}

}

