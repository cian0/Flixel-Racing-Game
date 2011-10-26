package ph.com.topgear.car
{
	import org.flixel.*;
	import ph.com.topgear.car.*;
	public class PlayerCar extends CarTemplate
	{
		private var carAccel:Number = .50; //orig 0.45
		private var carDecel:Number = -0.3;
		private var carRotationalAccel:Number = 2.3; //orig 1.7
		private var targetCheckpoint:uint = 0;
		private var maxCheckpoint:uint;
		private var curCheckpoint:int = -1;
		private var currentLap:uint = 0;
		private var maxLaps:uint = 1;
		public function PlayerCar(myX:Number , myY:Number, w:Number = 30, h:Number = 50 ) 
		{
			super(myX  , myY, w, h); // this will be the main moving car
									 // attach a graphic class to this and make this transparent.
			isPlayer = true;
		}
		public function setMaxCheckpoints(max:int):void{
			maxCheckpoint = max;
			
		}
		public function set currentCheckpoint (val:int):void {
			if (val == targetCheckpoint) {
				curCheckpoint = val;
				targetCheckpoint ++;
				FlxG.log ("curCheckpoint:" + curCheckpoint);
				if (targetCheckpoint > maxCheckpoint) {
					targetCheckpoint = 0;
					
					currentLap++;
					FlxG.log ("currentLap:" + currentLap);
					if (currentLap == maxLaps) {
						FlxG.log ("max laps reached!");
						//FlixelGame.stopTimer = true;
						
					}
					PlayState.addTime();
					PlayState.resetCheckPointGraphics();
				}
			}else {
				//FlxG.log ("invalid checkpoint");
			}
		}
		public function get currentCheckpoint ():int {
			return curCheckpoint;
		}
		override public function update():void
		{
			accel = 0;
			rotAccel = 0;
			if (!FlixelGame.gameStart)
				return;
			if (FlxG.keys.UP && !FlxG.keys.SPACE) {
				if (FlxG.keys.RIGHT) {
					if (Math.round (speed) > 0)
						rotAccel = carRotationalAccel;
					else
						rotAccel = 0;
				}
				else if (FlxG.keys.LEFT) {
					//if (int(Math.round (speed) )> 0){
						rotAccel = -carRotationalAccel;
						
					//}
					//else
						//rotAccel = 0;
						//trace ("up left");
				}
				if (!sand){
					accel = carAccel;
					
				}else {
					//FlxG.log ('sand');
					accel = carAccel * sandDrag;
				}
			}
			else if (FlxG.keys.DOWN && !FlxG.keys.SPACE) {
				if (FlxG.keys.RIGHT) {
					if (Math.round (speed) > 0)
						rotAccel = carRotationalAccel;
					else
						rotAccel = 0;
						//trace ("down right");
				
				}
				else if (FlxG.keys.LEFT) {
					if (int(Math.round (speed) )> 0){
						rotAccel = -carRotationalAccel;
					}
					else
						rotAccel = 0;
						//trace ("down left");
				}
				if (!sand){
				
					accel = carDecel;
				}else {
					accel = carDecel * sandDrag;
				}
			}else
		
				if (FlxG.keys.RIGHT) {
					if (Math.round (speed) > 0)
						rotAccel = carRotationalAccel;
					else
						rotAccel = 0;
				}
				if (FlxG.keys.LEFT) {
					if (int(Math.round (speed) )> 0){
						rotAccel = -carRotationalAccel;
					}
					else
						rotAccel = 0;
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