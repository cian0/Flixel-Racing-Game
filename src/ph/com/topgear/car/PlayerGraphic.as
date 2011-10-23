package ph.com.topgear.car

{

	import org.flixel.*;
	import ph.com.topgear.car.*;
	public class PlayerGraphic extends FlxSprite	
	{
		[Embed(source = '../../../../assets/playerCar.png')]
		protected var ImgPlayer:Class;	
		
		private var hasSet:Boolean = false;
		private var hitArea:PlayerCar;
		private var xOffSet:Number = -21;
		private var yOffSet:Number = -3;
		private var assumedAngle:Number;
		
		public function PlayerGraphic(target:PlayerCar):void 
		{
			hitArea = target;
			super(hitArea.x + xOffSet, hitArea.y + yOffSet);
			loadGraphic(ImgPlayer, true, true, 90, 80);
			hasSet = true;
		}
		override public function update():void {
			if (!hasSet) 
				return;
			this.x = hitArea.x + xOffSet;
			this.y = hitArea.y + yOffSet;
			assumedAngle = (hitArea.angle % 360) * -1 ;
			
			var currentFrame:int = ((assumedAngle + (180*5)) / 11) % 33;
			currentFrame = 32 - currentFrame;
			
			this.frame = currentFrame;
			
			super.update();
		}
	}
}