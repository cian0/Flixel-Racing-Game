package

{

	import org.flixel.*;

	public class RacingCar extends FlxSprite

	
	{
		[Embed(source='assets/playerCar.png')]

		protected var ImgPlayer:Class;
		
		private var assumedAngle:Number;
		private var speed:Number;
		private var speedDecay:Number;
		private var rotationStep:Number;
		private var maxSpeed:Number;
		private var backSpeed:Number;
		private var speedX:Number;
		private var speedY:Number;
		private var logThis:Number;
		
		public function RacingCar(X:Number,Y:Number):void

		{
			super(X, Y);
			loadGraphic(ImgPlayer, true, true, 90, 80);
						
			
			
			logThis = 0;
			this.angle = 0;
			acceleration = new FlxPoint(10, 2);
			speedDecay = .97;
			this.drag = new FlxPoint(5,0);
			rotationStep = 3;
			maxSpeed = 1000;
			backSpeed = 70;
			assumedAngle = (this.angle % 360) * -1 ;
			speed = 0;
			velocity.x = 0;
			velocity.y = 0;
			this.frame = 24;
		}
		
		override public function update():void
		{
			if (speed > 5) {
				speed *= speedDecay;
				//trace (speed);
			} else {
				speed = 0;
			}
			
			if (assumedAngle >= 360 || assumedAngle <= -360)
				assumedAngle = assumedAngle % 360;
				
			if (assumedAngle < 0)
				assumedAngle = 360 + assumedAngle;
			
			if(FlxG.keys.UP && speed < maxSpeed)
			{
				speed += acceleration.x;
			}
			else if(FlxG.keys.DOWN)
			{
				speed -= backSpeed;
			}
			FlxG.log(speed);
			if(FlxG.keys.LEFT && speed > 50)
			{
				assumedAngle += rotationStep * (speed / maxSpeed);
			}
			else if(FlxG.keys.RIGHT && speed > 50)
			{
				assumedAngle -= rotationStep * (speed / maxSpeed);
			}
			
			/*
			velocity.x = Math.sin((this.angle+90) * (Math.PI / 180)) * speed;
			velocity.y = Math.cos((this.angle+90) * (Math.PI / 180)) * speed * -1;
			*/
			//var angleByStep:int = assumedAngle - (assumedAngle % 33);
			velocity.x = Math.sin((360 - assumedAngle ) * (Math.PI / 180)) * speed;
			velocity.y = Math.cos((360 - assumedAngle ) * (Math.PI / 180)) * speed * -1;
			
			//this.angle = (assumedAngle) * -1;
			
			//this.frame = Math.abs(Math.ceil(this.angle % 32))+10;
			var currentFrame:int = ((assumedAngle + 180) / 11) % 33;
			currentFrame = 32 - currentFrame;
			this.frame = currentFrame;
			super.update();
		}
	}
}