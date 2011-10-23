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
			FlxG.debug = true;
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
				
			}
			if (sprite is RoadBlock) {
				sprite.elasticity = 10;
				obstacleGroup.add(sprite);
			}
			
		}
		override public function update():void {
			
			super.update();
			
				if (player.x < FlxG.worldBounds.left + 10) {
					player.x = FlxG.worldBounds.left + 15;
					PlayerCar(player).sand = true;
				}else if (player.x > FlxG.worldBounds.right - 10 ) {
					player.x = FlxG.worldBounds.right - 15;
					PlayerCar(player).sand = true;
				}else if (player.y > FlxG.worldBounds.bottom  - 40) {
					player.y = FlxG.worldBounds.bottom- 45;
					PlayerCar(player).sand = true;
				}else if (player.y < FlxG.worldBounds.top + 5) {
					player.y = FlxG.worldBounds.top + 10;
					PlayerCar(player).sand = true;
				}else {
					PlayerCar(player).sand = true;
					if (!level1.mainLayer.overlaps(player, false)){
						PlayerCar(player).sand = false;
					}
				}
			
			FlxG.overlap(obstacleGroup, player, obstacleHit);
			
			FlxG.collide(obstacleGroup, player);
			
			
			

			
		}
		
		private function obstacleHit(obstacle:FlxSprite, player:FlxSprite):void {
			RacingCar(player).xSpeed *= -0.5;
			RacingCar(player).ySpeed *= -0.5;
		}

	}

}

