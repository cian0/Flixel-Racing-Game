package ph.com.topgear.car
{
	import org.flixel.*;
	import ph.com.topgear.car.*;
	public class CarTemplate extends FlxSprite
	{
		private var toRad:Number = Math.PI/180;
		private var hHeight:Number;
		private var hWidth:Number;
		private var perpendicularForce:Number = 0;
		private var skidding:Boolean = false;
		public var xSpeed:Number = 0;
		public var ySpeed:Number = 0;
		private var hasTested:Boolean = false;
		public var speed:Number = 0;
		public var accel:Number = 0;
		public var rotAccel:Number = 0;
		public var rotSpeed:Number = 0;
		
		public var sandDrag:Number = 0.1;//orig 0.2
		public var skid:Number = 0.3; //how much it skids
		public var realFriction:Number = skid;
		public var sand:Boolean = false;
		public var skidStartThreshold:Number = 0.79;//orig 0.8
		public var skidStopThreshold:Number = 2;
		public var skidFrictionMult:Number = 0.5;
		protected var isPlayer:Boolean = false;
		private var xComp:Number;
		private var yComp:Number;
		private var lastAngle:Number;
		public function CarTemplate(myX:Number , myY:Number, w:Number = 30, h:Number = 50 ) 
		{
			super(myX  , myY );
			//angle = 180;
			
			this.makeGraphic(w, h, 0xdeff1da9);
			if (FlxG.debug)
				this.alpha = .50;
			else
				this.alpha = 0;
		}
		private function stopSkidding():void {
			realFriction = skid * skidFrictionMult;
			skidding = true;
		}
		private function startSkidding():void {
			realFriction = skid;
			skidding = false;
		}
		private function addSkidMarks():void {
			FlxG.log ("skid marks!!!");
		}
		override public function update():void
		{
			xComp = -Math.sin( -angle * toRad);
			yComp = -Math.cos( -angle * toRad);
			perpendicularForce = -yComp * xSpeed + xComp * ySpeed;
			//trace (Math.abs(perpendicularForce) + " || " + skidStartThreshold);
			//if (Math.abs(perpendicularForce) > skidStartThreshold)
			//	trace (Math.abs(perpendicularForce));
			if (!skidding) {
				if (Math.abs(perpendicularForce) > skidStartThreshold) {
					stopSkidding();
					
				}
			}else{
				addSkidMarks();
				if (Math.abs(perpendicularForce) < skidStopThreshold) {
					startSkidding();
					
				}
			}
			var skidForceX:Number = -yComp * perpendicularForce;
			var skidForceY:Number = xComp * perpendicularForce;
			
			xSpeed -= skidForceX * realFriction;
			ySpeed -= skidForceY * realFriction;
			
			
			xSpeed += accel * xComp * realFriction;
			ySpeed += accel * yComp * realFriction;
			
			if (!hasTested) {
				hasTested = true;
				
			}
			speed = Math.sqrt(xSpeed * xSpeed + ySpeed * ySpeed);
			
			rotSpeed += rotAccel * (speed / 7);
			
			if (isPlayer) {
				//if (!skidding)
					if (Math.round(speed + 0.2) > 0) {
						//trace ("Math.round(speed + 0.2");
						if (FlxG.keys.UP){
							if (FlxG.keys.RIGHT){
								angle += rotSpeed;
								
							}
							else if (FlxG.keys.LEFT) 
								angle -= Math.abs (rotSpeed) + .3;			
							//trace ("FlxG.keys.UP");
						}
						else if (FlxG.keys.DOWN) {
							trace ("FlxG.keys.DOWN");
							if (FlxG.keys.RIGHT)
								angle -= rotSpeed;
							else if (FlxG.keys.LEFT) 
								angle += Math.abs (rotSpeed)+.3;			
						}else {
							if (FlxG.keys.RIGHT){
								angle += rotSpeed;
								
							}
							else if (FlxG.keys.LEFT) 
								angle -= Math.abs (rotSpeed);	
						}
					}
				//else	
					//angle += rotSpeed;
			}
			this.x += xSpeed;
			this.y += ySpeed;
			lastAngle = angle;
			super.update();
			accel = 0;
			rotAccel = 0;
			
			xSpeed -= xSpeed * 0.05 * realFriction;
			ySpeed -= ySpeed * 0.05 * realFriction;
			
			if (speed == 0)
				rotSpeed = 0;
			else
				rotSpeed = 0.4 * (1 - realFriction);
		}
	}
}