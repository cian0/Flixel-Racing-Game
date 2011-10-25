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
		public static var checkpointGraphicGroup:FlxGroup;
		public static var lapFinished:uint = 0;
		public static var hud:FlxGroup;
		protected var playerHitArea:FlxSprite;
		protected var playerGraphic:PlayerGraphic;
		private var tmr:Timer;
		private var tmrCtr:uint = 3;
		private var ctr:uint = 0;
		private var ctr2:uint = 0;
		[Embed(source = 'assets/topgear_philippines_small.jpg')]
		protected var ImgLogo:Class;	
		/*
		 * for time. format is mmm:ss:ms
		 * */
		
		protected var mmm:String;
		protected var ss:String;
		protected var ms:String;
		
		public static var minutes:uint;
		public static var seconds:uint;
		public static var milliseconds:uint;
		
		private var t:FlxText;
		protected var lapTimer:Timer;
		public static var raceStart:int;
		protected var gameStarted:Boolean = false;
		protected var timeElapsed:int;
		public static var timeText:FlxText;
		//protected var hud:FlxGroup;
		public function PlayState():void {
			
			obstacleGroup = new FlxGroup();
			checkpointGroup = new FlxGroup();
			checkpointGraphicGroup = new FlxGroup();
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
			add(t);
			
			timeText = new FlxText(FlxG.camera.scroll.x + 20, FlxG.camera.scroll.y +10, FlxG.width, "0:00:00");
			timeText.size = 10;
			timeText.alignment = "left";
			
			var topGearLogo:FlxSprite;
			topGearLogo = new FlxSprite(FlxG.camera.scroll.x + 20, FlxG.camera.scroll.y +520);
			//topGearLogo.loadGraphic(ImgLogo, false, true, 294, 106);
			topGearLogo.loadGraphic(ImgLogo, false, true, 166, 60);
			hud.add(topGearLogo);
			
			hud.add(timeText);
			hud.setAll("scrollFactor", new FlxPoint(0, 0));
			add(hud);
			
			tmr = new Timer(1000, 4);
			tmr.addEventListener(TimerEvent.TIMER, timerListener);
			tmr.start();
			
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
			if (sprite is CheckpointChecker) {
				checkpointGraphicGroup.add(sprite);
				ctr2++;
			}
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
				if (player.currentCheckpoint == Checkpoint(checkpointHA).lapNo)
					CheckpointChecker(checkpointGraphicGroup.members[Checkpoint(checkpointHA).lapNo]).frame = 4;
			}
			
			//trace (checkpointHA.checkPoint.lapNo);
		}
		public static function resetCheckPointGraphics ():void {
			
			for (var i:uint = 0 ; i < checkpointGraphicGroup.length; i++ ) {
				CheckpointChecker(checkpointGraphicGroup.members[i]).frame = 0;
				//trace ("here");
			}
		}
		public static function addTime():void {
			if (timeText) {
				//var t:FlxText = new FlxText(FlxG.camera.scroll.x + 20, FlxG.camera.scroll.y +10 + (30* lapFinished ), FlxG.width, timeText.text);
				var t:FlxText = new FlxText(FlxG.width - 50, 10 + (20* lapFinished ), FlxG.width, timeText.text);
				t.size = 10;
				t.alignment = "left";
				hud.add(t);
				trace (FlxText( hud.members[1]).x)
				hud.setAll("scrollFactor", new FlxPoint(0, 0));
				lapFinished++;
				raceStart = getTimer();
			}
		}
	}
}

