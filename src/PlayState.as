package

{

	import org.flixel.*;



	public class PlayState extends FlxState

	{
		protected var level1:BaseLevel;
		protected var player:RacingCar;
		protected var obstacleGroup:FlxGroup;
		protected var playerHitArea:FlxSprite;
		
		public function PlayState():void {
			obstacleGroup = new FlxGroup();
		}
		override public function create():void

		{

			//add(new FlxText(0,0,100,"INSERT GAME HERE"));
			level1 = new Level_Road1(true, onSpriteAddedCallback);
			
			FlxG.camera.follow(player);
			FlxG.camera.bounds = level1.mainLayer.getBounds();//new FlxRect(level1.mainLayer.left, level1.mainLayer.top, level1.mainLayer.right, level1.mainLayer.bottom);
			//level1.mainLayer
			//FlxG.followBounds
			FlxG.worldBounds = level1.mainLayer.getBounds();
		}
		protected function onSpriteAddedCallback(sprite:FlxSprite, group:FlxGroup):void
		{
			
			if (sprite is RacingCar)
			{
				player = sprite as RacingCar;
				playerHitArea = new FlxSprite(player.x, player.y);
				playerHitArea.makeGraphic(player.width*.7 - 25, player.height*.7-3, 0xdeff1da9);
				player.elasticity = 1;
				player.mass = 0;
				trace (player.x + "plus" + player.y);
				add (playerHitArea);
				player.setHitArea (playerHitArea);
				FlxGroup.ASCENDING;
			}
			if (sprite is Obstacle2 || sprite is RoadBlocks) {
				sprite.elasticity = 0;
				obstacleGroup.add(sprite);
				sprite.elasticity = 0;
				sprite.mass = 500;
			}
			
		}
		override public function update():void {
			
			super.update();
			if (level1.mainLayer.overlaps(player, false)){
				//trace('overlaps');
			}
			//FlxG.overlap(obstacleGroup, player, obstacleHit);
			
			playerHitArea.x = player.x + 28 ;
			playerHitArea.y = player.y  + 17;
			//playerHitArea.angle = player.carAngle*-1 -90;
			
			FlxG.collide(obstacleGroup, playerHitArea);
		}
		
		private function obstacleHit(obstacle:FlxSprite, player:FlxSprite):void {
			/*trace ("hit!");
			player.velocity.x = 0;
			player.velocity.y = 0;
			*/
			trace ('hit');
			//obstacle.mass = 1;
			//obstacle.elasticity = 0.8;
			//player.elasticity = 0.8;
		}

	}

}

