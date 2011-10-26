//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import ph.com.topgear.obstacles.*;
	public class Level_Road1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="assets/mapCSV_BG_BGLayer.csv", mimeType="application/octet-stream")] public var CSV_BGBGLayer:Class;
		[Embed(source="assets/sandFinal.png")] public var Img_BGBGLayer:Class;
		[Embed(source="assets/mapCSV_BG_BGLayer3.csv", mimeType="application/octet-stream")] public var CSV_BGBGLayer3:Class;
		[Embed(source="assets/sandFinal.png")] public var Img_BGBGLayer3:Class;
		[Embed(source="assets/mapCSV_AllRoads_Roads.csv", mimeType="application/octet-stream")] public var CSV_AllRoadsRoads:Class;
		[Embed(source="assets/road.png")] public var Img_AllRoadsRoads:Class;

		//Tilemaps
		public var layerBGBGLayer:FlxTilemap;
		public var layerBGBGLayer3:FlxTilemap;
		public var layerAllRoadsRoads:FlxTilemap;

		//Sprites
		public var playerGroupraceCarGroup:FlxGroup = new FlxGroup;
		public var obstaclesGroupobstacle1Group:FlxGroup = new FlxGroup;
		public var obstaclesGroupLapsGroup:FlxGroup = new FlxGroup;
		public var obstaclesGroupstartGroup:FlxGroup = new FlxGroup;
		public var obstaclesGroupLayer5Group:FlxGroup = new FlxGroup;


		public function Level_Road1(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerBGBGLayer = new FlxTilemap;
			layerBGBGLayer.loadMap( new CSV_BGBGLayer, Img_BGBGLayer, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerBGBGLayer.x = 0.000000;
			layerBGBGLayer.y = 0.000000;
			layerBGBGLayer.scrollFactor.x = 1.000000;
			layerBGBGLayer.scrollFactor.y = 1.000000;
			layerBGBGLayer3 = new FlxTilemap;
			layerBGBGLayer3.loadMap( new CSV_BGBGLayer3, Img_BGBGLayer3, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerBGBGLayer3.x = 0.000000;
			layerBGBGLayer3.y = 0.000000;
			layerBGBGLayer3.scrollFactor.x = 1.000000;
			layerBGBGLayer3.scrollFactor.y = 1.000000;
			layerAllRoadsRoads = new FlxTilemap;
			layerAllRoadsRoads.loadMap( new CSV_AllRoadsRoads, Img_AllRoadsRoads, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerAllRoadsRoads.x = 0.000000;
			layerAllRoadsRoads.y = 0.000000;
			layerAllRoadsRoads.scrollFactor.x = 1.000000;
			layerAllRoadsRoads.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerBGBGLayer);
			masterLayer.add(layerBGBGLayer3);
			masterLayer.add(layerAllRoadsRoads);
			masterLayer.add(playerGroupraceCarGroup);
			masterLayer.add(obstaclesGroupobstacle1Group);
			masterLayer.add(obstaclesGroupLapsGroup);
			masterLayer.add(obstaclesGroupstartGroup);
			masterLayer.add(obstaclesGroupLayer5Group);


			if ( addToStage )
			{
				addSpritesForLayerplayerGroupraceCar(onAddSpritesCallback);
				addSpritesForLayerobstaclesGroupobstacle1(onAddSpritesCallback);
				addSpritesForLayerobstaclesGroupLaps(onAddSpritesCallback);
				addSpritesForLayerobstaclesGroupstart(onAddSpritesCallback);
				addSpritesForLayerobstaclesGroupLayer5(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerBGBGLayer3;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 1920;
			boundsMaxY = 1440;

		}

		override public function addSpritesForLayerplayerGroupraceCar(onAddCallback:Function = null):void
		{
			addSpriteToLayer(RacingCar, playerGroupraceCarGroup , 877.000, 384.000, 0.000, false, 1, 1, onAddCallback );//"raceCar"
		}

		override public function addSpritesForLayerobstaclesGroupobstacle1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 693.000, 271.000, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 661.905, 267.208, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 630.810, 263.416, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 601.902, 267.817, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 576.832, 286.600, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 551.763, 305.384, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 526.694, 324.167, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 501.624, 342.950, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 476.555, 361.734, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 451.485, 380.517, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 426.416, 399.300, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 401.347, 418.083, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 376.277, 436.867, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 351.208, 455.650, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 326.139, 474.433, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 301.069, 493.217, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 276.000, 512.000, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
		}

		override public function addSpritesForLayerobstaclesGroupLaps(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 1355.000, 353.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 1571.000, 760.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 1005.000, 1170.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 657.000, 897.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 259.000, 1152.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 85.000, 752.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 564.000, 373.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
		}

		override public function addSpritesForLayerobstaclesGroupstart(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Start, obstaclesGroupstartGroup , 969.000, 353.000, 0.000, false, 1, 1, onAddCallback );//"start"
			addSpriteToLayer(Start, obstaclesGroupstartGroup , 969.000, 418.500, 0.000, false, 1, 1, onAddCallback );//"start"
		}

		override public function addSpritesForLayerobstaclesGroupLayer5(onAddCallback:Function = null):void
		{
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 1429.000, 309.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 1779.000, 944.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 1093.000, 1129.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 618.000, 870.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 235.000, 1335.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 51.000, 716.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 608.000, 312.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
		}


	}
}
