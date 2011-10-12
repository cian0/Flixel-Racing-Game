package

{

	import org.flixel.*;

	public class RacingCar extends Car

	
	{
		[Embed(source='assets/playerCar.png')]
		
		protected var ImgPlayer:Class;
		public var assumedAngle:Number;
		
		
		
		public function RacingCar(X:Number,Y:Number):void

		{
			super(X, Y);
			//loadGraphic(ImgPlayer, true, true, 90, 80);
			//makeGraphic(90, 80);
			this.scale.x = .7;
			this.scale.y = .7;
			//this.frame = 24;
			//this.alpha = 0;
			
			super.makeGraphic(63 - 25, 56 - 3, 0xdeff1da9);
		}
		
		override public function update():void
		{
			if(FlxG.keys.UP){
				this.accel=1
			}
			if(FlxG.keys.DOWN){
				
				trace();
				if (this.accel > 0) {
					this.realFriction = 0;
					//this.accel = -5;
					trace ('here');
				}else{
					//this.accel = -.5;
					trace ('here2');
				}
			}
			if(FlxG.keys.RIGHT){
				this.rotAccel = 1
			}
			if(FlxG.keys.LEFT){
				this.rotAccel = -2
			}
			if (!FlxG.keys.LEFT && !FlxG.keys.UP && !FlxG.keys.RIGHT && !FlxG.keys.DOWN ) {
				//this.rotAccel = 0;
				this.rotationMult = 0;
				//trace ('here');
			}else {
				this.rotationMult = 0.4;
			}
			super.update();
			//this.rotAccel = 0;
		}
		/*
		
		public function set carAngle( val:Number ):void {
			if (val >= 360) {
				val = val % 360;
			}else if (val < 0) {
				val = 360 + val;
			}
			
			assumedAngle = val;
			
			var currentFrame:Number = (((actualAngle+360) / 11.25)+16)% 32;
			//currentFrame = 32 - currentFrame;
			//trace (currentFrame);
			if (currentFrame == 0 && assumedAngle > 270) {
				currentFrame = 31;
				
			}else if (currentFrame == 0 && assumedAngle < 270) {
				currentFrame = 1;
			}
			
			this.frame = currentFrame;
		}
		public function get carAngle():Number {
			return assumedAngle;
		}
		
		*/
	}
}