package  
{
	import flash.geom.Point;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Ian Icasiano
	 */
	public class CarTemplate extends FlxSprite 
	{
		public var accel:Number = .2;
		// acceleration due to gas (up arrow)
		public var steer:Number = .08;
		// steering tightness
		public var steer_normal:Number = .08;
		// Default Steering
		public var steer_handbrake:Number = .099;
		// Incremental increases for handbrakeys
		public var steer_threshold:Number = 4;
		// Speed where steering at its most manouvreable
		public var MINspd:Number = -5;
		// max reverse speed
		public var MAXspd:Number = 22;
		// max speed on straightaway
		public var MAXskiddisplay:Number = 2;
		// Display skids on slides till this value reached
		public var MAXturnSpd:Number = 10;
		// maximum speed while turning
		public var MaxTurnSkid:Number = 18;
		// Maximum speed in turn before skidding
		public var deccel:Number = .92;
		// decelleration due to brakes (down arrow)
		public var handbrake:Number = .93;
		// decelleration due to brakes (down arrow)
		public var handbrake_traction:Number = 20;
		// Amount of slide for handbrake higher is more
		public var drift:Number = .98;
		// deceleration after letting off gas
		// GLOBAL CONSTANTS AND VARIABLES 
		public var speed:Number = 0;
		// duuuh!
		public var surface:Number = 3;
		// Tar = 10 gravel = 1 ice = 0.5 
		public var traction:Number = 5;
		// the higher the more slippery init value
		public var traction_max:Number = 1;
		// Max Traction
		public var vector:Point = new Point(0, 0);
		// vector of the direction of the car
		public var bounceback:Number = .6;
		// percent of speed when bounced back from hitting an obstacle
		public var laptimes:Array = new Array();
		// Laptime counter
		public var laps:Number = 3;
		public var skidding:Boolean = false;
		public var turnskidding:Boolean = false;
		public var skids:Number = 1;
		public function CarTemplate() 
		{
			// start angle of car in radians
		}
		
	}

}