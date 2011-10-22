package  
{
	import org.flixel.FlxG;
	/**
	 * ...
	 * @author Ian Icasiano
	 */
	public class PlayerCar extends CarTemplate
	{
		[Embed(source='assets/playerCar.png')]
		protected var ImgPlayer:Class;
		var UD:int;
		var LR:int;
		var HAND:int;
		public function PlayerCar() 
		{
			
		}
		private function adjust (v:Number, threshhold:Number, maximum:Number) {
			var vx:Number = 0;
			if (v <= threshold) {
				vx = (v / threshold) * 1.0;
			} else {
				vx = 1;
			}
			return vx;			
		}
		override public function update():void
		{
			angle = angleRad * 180 / Math.PI;
			UD = int (FlxG.keys.UP) - int (FlxG.keys.DOWN);
			LR = int (FlxG.keys.RIGHT) - int (FlxG.keys.LEFT);
			HAND = int (FlxG.keys.SPACE);
			if (LR) {
				angle += LR * steer * adjust(Math.abs(speed), steer_threshold, MAXSpd);	
				// SKIDDIES
				if (speed > maxturnskid) {
					if (!turnskidding) {
						setLastpos();
					}
					turnskidding = skid(HAND);
				} else {
					turnskidding = false;
				}
			} else {
				turnskidding = false;
			}
			super.update();
		}
	}
}