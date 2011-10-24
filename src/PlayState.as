package

{

	import flash.events.TimerEvent;
	import flash.ui.ContextMenuItem;
	import flash.utils.Timer;
	import org.flixel.*;
	import ph.com.topgear.car.*;
	import ph.com.topgear.obstacles.*;
	import flash.utils.getTimer;
	public class PlayState extends FlxState

	{
		protected var level1:BaseLevel;
		protected var player:RacingCar;
		protected var obstacleGroup:FlxGroup;
		protected var checkpointGroup:FlxGroup;
		protected var playerHitArea:FlxSprite;
		protected var playerGraphic:PlayerGraphic;
		private var tmr:Timer;
		private var tmrCtr:uint = 3;
		private var ctr:uint = 0;
		
		/*
		 * for time. format is mmm:ss:ms
		 * */
		
		protected var mmm:String;
		protected var ss:String;
		protected var ms:String;
		
		protected var minutes:uint;
		protected var seconds:uint;
		protected var milliseconds:uint;
		private var t:FlxText;
		protected var lapTimer:Timer;
		private var raceStart:int;
		protected var gameStarted:Boolean = false;
		protected var timeElapsed:int;
		protected var timeText:FlxText;
		protected var hud:FlxGroup;
		public function PlayState():void {
			
			obstacleGroup = new FlxGroup();
			checkpointGroup = new FlxGroup();
			hud = new FlxGroup();
			//FlxG.debug = true;
			FlxG.debug = false;
		}
		override public function create():void

		{
			startGame();
			t = new FlxText(0,FlxG.height/2-10,FlxG.width,"Ready!");
			t.size = 16;
			t.alignment = "center";
			//t.font = "Arial";
			add(t);
			
			//timeText = new FlxText(0, FlxG.height / 2 - 10, FlxG.width, "0:00:00");
			timeText = new FlxText(FlxG.camera.scroll.x + 20, FlxG.camera.scroll.y +10, FlxG.width, "0:00:00");
			timeText.size = 10;
			timeText.alignment = "left";
			
			hud.add(timeText);
			hud.setAll("scrollFactor", new FlxPoint(0, 0));
			add(hud);
			//lapTimer = new Timer (100);
			//lapTimer.addEventListener(TimerEvent.TIMER, lapTimerListener);
			tmr = new Timer(1000, 4);
			tmr.addEventListener(TimerEvent.TIMER, timerListener);
			tmr.start();
			
		}
		private function lapTimerListener():void {
			
			timeElapsed = getTimer() - raceStart;
			
			milliseconds = timeElapsed % 100;
			ms = String(milliseconds);
			seconds = timeElapsed / 1000;
			ss = seconds % 60 < 10 ? "0" + String(seconds % 60) : String(seconds % 60);
			minutes = seconds / 60;
			mmm = String(minutes);
			FlixelGame.currentRacingTime = mmm + ":" + ss + ":" + ms;
			FlxG.log(FlixelGame.currentRacingTime);
			timeText.text = FlixelGame.currentRacingTime;
		}
		private function timerListener(e:TimerEvent):void {
			if (tmrCtr == 1)
				t.text = "Start!";
			else if (tmrCtr == 0) {
				FlixelGame.gameStart = true;
				raceStart = getTimer();
				remove(t);
				t.destroy();
				tmr.removeEventListener(TimerEvent.TIMER, timerListener);
			}else {
				t.text = String(tmrCtr);
			}
			tmrCtr --;
		}
		private function startGame():void {
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
				player.angle = 90;
				playerGraphic = new PlayerGraphic(player);
				
			}
			if (sprite is RoadBlock) {
				sprite.elasticity = 10;
				obstacleGroup.add(sprite);
			}
			if (sprite is Checkpoint) {
				checkpointGroup.add(sprite);
				Checkpoint(sprite).lapNo = ctr;
				ctr++;
			}
			if (sprite is Start) {
				Start(sprite).lapNo = ctr;
				//trace (ctr)
				checkpointGroup.add(sprite);
				player.setMaxCheckpoints(ctr);
			}
			
		}
		override public function update():void {
			//trace (FlxG.camera.scroll.x);
			t.x = FlxG.camera.scroll.x ;
			t.y = FlxG.camera.scroll.y + FlxG.height / 2;
			//timeText.x = FlxG.camera.scroll.x + 20;
			//timeText.y = FlxG.camera.scroll.y + 10;
			super.update();
			if (!FlixelGame.gameStart)
				return;
			if (!FlixelGame.stopTimer)
				lapTimerListener();
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
			//FlxG.worldBounds = new FlxRect((player.x - FlxG.width / 2) - 10, (player.y - FlxG.height / 2) - 10, FlxG.width + 20, FlxG.height + 20);
			FlxG.overlap(obstacleGroup, player, obstacleHit);
			FlxG.overlap(checkpointGroup, player, checkpointHit);
			FlxG.collide(obstacleGroup, player);
			//FlxG.collide(checkpointGroup, player);
		}
		
		private function obstacleHit(obstacle:FlxSprite, player:FlxSprite):void {
			RacingCar(player).xSpeed *= -0.5;
			RacingCar(player).ySpeed *= -0.5;
		}
		private function checkpointHit(checkpointHA:FlxSprite, player:RacingCar):void {
			//RacingCar(player).xSpeed *= -0.5;
			//RacingCar(player).ySpeed *= -0.5;
			if (checkpointHA is Start) {
				player.currentCheckpoint = Start(checkpointHA).lapNo;
			}else {
				player.currentCheckpoint = Checkpoint(checkpointHA).lapNo;
			}
			
			//trace (checkpointHA.checkPoint.lapNo);
		}

	}

}

