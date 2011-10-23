package ph.com.topgear.car
{
	import org.flixel.*;
	import ph.com.topgear.car.*;
	public class PlayerCar extends CarTemplate
	{
		private var carAccel:Number = 0.25;
		private var carDecel:Number = -0.1;
		public function PlayerCar(myX:Number , myY:Number, w:Number = 30, h:Number = 50 ) 
		{
			super(myX  , myY, w, h); // this will be the main moving car
									 // attach a graphic class to this and make this transparent.
		}
		
		override public function update():void
		{
			accel = 0;
			rotAccel = 0;
			if (FlxG.keys.UP && !FlxG.keys.SPACE) {
				accel = carAccel;
			}
			if (FlxG.keys.DOWN && !FlxG.keys.SPACE) {
				accel = carDecel;
			}
			if (FlxG.keys.RIGHT) {
				rotAccel = 1.7;
			}
			if (FlxG.keys.LEFT) {
				rotAccel = -1.7;
			}
			
			if (FlxG.keys.SPACE) {
				realFriction = 1;
			}else {
				realFriction = skid;
			}
			
			super.update();
		}
	}
}