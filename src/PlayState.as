package

{

	import org.flixel.*;
	import ph.com.topgear.car.*;


	public class PlayState extends FlxState

	{
		protected var level1:BaseLevel;
		protected var player:RacingCar;
		protected var obstacleGroup:FlxGroup;
		protected var playerHitArea:FlxSprite;
		protected var playerGraphic:PlayerGraphic;
		public function PlayState():void {
			obstacleGroup = new FlxGroup();
		}
		override public function create():void

		{
			level1 = new Level_Road1(true, onSpriteAddedCallback);
			add(playerGraphic);
			FlxG.camera.follow(player);
			
			FlxG.camera.bounds = level1.mainLayer.getBounds();
			FlxG.worldBounds = level1.mainLayer.getBounds();
		}
		protected function onSpriteAddedCallback(sprite:FlxSprite, group:FlxGroup):void
		{
			
			if (sprite is RacingCar)
			{
				player = sprite as RacingCar;
				playerGraphic = new PlayerGraphic(player);
				
				//FlxGroup.DESCENDING;
			}
			if (sprite is Obstacle2 || sprite is RoadBlocks) {
				//sprite.elasticity = 0;
				obstacleGroup.add(sprite);
				//sprite.elasticity = 0;
				//sprite.mass = 500;
			}
			
		}
		override public function update():void {
			
			super.update();
			if (level1.mainLayer.overlaps(player, false)){
				//trace('overlaps');
			}
			FlxG.overlap(obstacleGroup, player, obstacleHit);
			
			//FlxG.collide(obstacleGroup, player);
		}
		
		private function obstacleHit(obstacle:FlxSprite, player:FlxSprite):void {
			
			trace ('hit');
			RacingCar(player).xSpeed *= 0.9;
			RacingCar(player).ySpeed *= 0.9;
		}

	}

}

