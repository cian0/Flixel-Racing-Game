package  
{
	/**
	 * ...
	 * @author Ian Icasiano
	 */
	import org.flixel.*;

	public class Car extends FlxSprite
	{
		public var xSpeed:Number = 0;
		public var ySpeed:Number = 0;
		public var accel:Number = 0;
		public var rotAccel:Number = 0;
		public var rotSpeed:Number = 0;
		public var speed:Number = 0;
		
		public var skid:Number = .01;				//controls how slippery the car is (1 is no friction, 0 full friction)
		public var realFriction:Number = .05;		//no need to change
		
		public var skidStartThreshold:Number = 3;	//how much the car must be skidding (moving perpendicularly to the direction its facing) in order to call it a skid
		public var skidStopThreshold:Number = 3.5;	// " " " " ... to stop skidding (the lower the more it skids)
		public var skidFrictionMult:Number = .5;	//how much more slippery the wheels will be after they 'caught' and dynamic friction takes over

		//aas
		public var xComp:Number;
		public var yComp:Number;
		private var toRad:Number = Math.PI / 180;
		public var skidForceX:Number;
		public var skidForceY:Number;
		public var perpForce:Number;
		public var rotationMult:Number = 0.4;
		public var skidding:Boolean = false;
		public function Car(X:Number,Y:Number) 
		{
			super(X, Y);
		}
		override public function update():void
		{
			xComp = -Math.sin( -this.angle * toRad);
			yComp = -Math.cos( -this.angle * toRad);
			perpForce = -yComp * xSpeed + xComp * ySpeed;
			
			trace (perpForce);
			if(!skidding){
				if (Math.abs(perpForce) > skidStartThreshold) {
					trace ("stopskid");
					stopSkidding();
				}
			}else {
				if (Math.abs(perpForce) < skidStopThreshold) {
					trace ("startskid");
					startSkidding();
				}
			}
			
			skidForceX = -yComp * perpForce;
			skidForceY = xComp * perpForce;
			
			xSpeed -= skidForceX * realFriction;
			ySpeed -= skidForceY * realFriction;
			
			xSpeed += accel * xComp * realFriction;
			ySpeed += accel * yComp * realFriction;
			//trace (xSpeed );
			
			speed = Math.sqrt(xSpeed * xSpeed + ySpeed * ySpeed); //pathagorean theorm
			
			rotSpeed += rotAccel * (speed / 7);//* realFriction
			
			this.angle += rotSpeed;
			this.x += xSpeed;
			this.y += ySpeed;

			//reset accels -- very important
			accel = 0;
			rotAccel = 0;
			
			//apply friction to all speed values
			xSpeed -= xSpeed * 0.05 * realFriction;
			ySpeed -= ySpeed * 0.05 * realFriction;
			
			rotSpeed = rotationMult * (1 - realFriction);
			
			
			super.update();
		}
		
		private function stopSkidding():void{
			realFriction = skid * skidFrictionMult;	
			skidding = true;
		}

		private function startSkidding():void {
			realFriction = skid;
			skidding = false;
		}
	}

}