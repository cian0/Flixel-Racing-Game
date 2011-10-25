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
		[Embed(source="assets/mapCSV_racingTrackGroup_racingTrackGrouproad64x48_1.csv", mimeType="application/octet-stream")] public var CSV_racingTrackGroupracingTrackGrouproad64x48_1:Class;
		[Embed(source="assets/64x48_2.png")] public var Img_racingTrackGroupracingTrackGrouproad64x48_1:Class;
		[Embed(source="assets/mapCSV_racingTrackGroup_road64x48_2.csv", mimeType="application/octet-stream")] public var CSV_racingTrackGrouproad64x48_2:Class;
		[Embed(source="assets/64x48.png")] public var Img_racingTrackGrouproad64x48_2:Class;
		[Embed(source="assets/mapCSV_racingTrackGroup_road64x48_3.csv", mimeType="application/octet-stream")] public var CSV_racingTrackGrouproad64x48_3:Class;
		[Embed(source="assets/64x48_3.png")] public var Img_racingTrackGrouproad64x48_3:Class;
		[Embed(source="assets/mapCSV_racingTrackGroup_road128x48.csv", mimeType="application/octet-stream")] public var CSV_racingTrackGrouproad128x48:Class;
		[Embed(source="assets/128x96.png")] public var Img_racingTrackGrouproad128x48:Class;
		[Embed(source="assets/mapCSV_racingTrackGroup2_road64x96_2.csv", mimeType="application/octet-stream")] public var CSV_racingTrackGroup2road64x96_2:Class;
		[Embed(source="assets/64x96_2.png")] public var Img_racingTrackGroup2road64x96_2:Class;
		[Embed(source="assets/mapCSV_racingTrackGroup3_road64x96_1.csv", mimeType="application/octet-stream")] public var CSV_racingTrackGroup3road64x96_1:Class;
		[Embed(source="assets/64x96.png")] public var Img_racingTrackGroup3road64x96_1:Class;

		//Tilemaps
		public var layerBGBGLayer:FlxTilemap;
		public var layerBGBGLayer3:FlxTilemap;
		public var layerracingTrackGroupracingTrackGrouproad64x48_1:FlxTilemap;
		public var layerracingTrackGrouproad64x48_2:FlxTilemap;
		public var layerracingTrackGrouproad64x48_3:FlxTilemap;
		public var layerracingTrackGrouproad128x48:FlxTilemap;
		public var layerracingTrackGroup2road64x96_2:FlxTilemap;
		public var layerracingTrackGroup3road64x96_1:FlxTilemap;

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
			layerracingTrackGroupracingTrackGrouproad64x48_1 = new FlxTilemap;
			layerracingTrackGroupracingTrackGrouproad64x48_1.loadMap( new CSV_racingTrackGroupracingTrackGrouproad64x48_1, Img_racingTrackGroupracingTrackGrouproad64x48_1, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerracingTrackGroupracingTrackGrouproad64x48_1.x = 0.000000;
			layerracingTrackGroupracingTrackGrouproad64x48_1.y = 0.000000;
			layerracingTrackGroupracingTrackGrouproad64x48_1.scrollFactor.x = 1.000000;
			layerracingTrackGroupracingTrackGrouproad64x48_1.scrollFactor.y = 1.000000;
			layerracingTrackGrouproad64x48_2 = new FlxTilemap;
			layerracingTrackGrouproad64x48_2.loadMap( new CSV_racingTrackGrouproad64x48_2, Img_racingTrackGrouproad64x48_2, 64,48, FlxTilemap.OFF, 0, 0, 1 );
			layerracingTrackGrouproad64x48_2.x = 0.000000;
			layerracingTrackGrouproad64x48_2.y = 0.000000;
			layerracingTrackGrouproad64x48_2.scrollFactor.x = 1.000000;
			layerracingTrackGrouproad64x48_2.scrollFactor.y = 1.000000;
			layerracingTrackGrouproad64x48_3 = new FlxTilemap;
			layerracingTrackGrouproad64x48_3.loadMap( new CSV_racingTrackGrouproad64x48_3, Img_racingTrackGrouproad64x48_3, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerracingTrackGrouproad64x48_3.x = 0.000000;
			layerracingTrackGrouproad64x48_3.y = 0.000000;
			layerracingTrackGrouproad64x48_3.scrollFactor.x = 1.000000;
			layerracingTrackGrouproad64x48_3.scrollFactor.y = 1.000000;
			layerracingTrackGrouproad128x48 = new FlxTilemap;
			layerracingTrackGrouproad128x48.loadMap( new CSV_racingTrackGrouproad128x48, Img_racingTrackGrouproad128x48, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerracingTrackGrouproad128x48.x = 0.000000;
			layerracingTrackGrouproad128x48.y = 0.000000;
			layerracingTrackGrouproad128x48.scrollFactor.x = 1.000000;
			layerracingTrackGrouproad128x48.scrollFactor.y = 1.000000;
			layerracingTrackGroup2road64x96_2 = new FlxTilemap;
			layerracingTrackGroup2road64x96_2.loadMap( new CSV_racingTrackGroup2road64x96_2, Img_racingTrackGroup2road64x96_2, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerracingTrackGroup2road64x96_2.x = 0.000000;
			layerracingTrackGroup2road64x96_2.y = 0.000000;
			layerracingTrackGroup2road64x96_2.scrollFactor.x = 1.000000;
			layerracingTrackGroup2road64x96_2.scrollFactor.y = 1.000000;
			layerracingTrackGroup3road64x96_1 = new FlxTilemap;
			layerracingTrackGroup3road64x96_1.loadMap( new CSV_racingTrackGroup3road64x96_1, Img_racingTrackGroup3road64x96_1, 64,48, FlxTilemap.OFF, 0, 1, 1 );
			layerracingTrackGroup3road64x96_1.x = 0.000000;
			layerracingTrackGroup3road64x96_1.y = 0.000000;
			layerracingTrackGroup3road64x96_1.scrollFactor.x = 1.000000;
			layerracingTrackGroup3road64x96_1.scrollFactor.y = 1.000000;

			//Add layers to the master group in correct order.
			masterLayer.add(layerBGBGLayer);
			masterLayer.add(layerBGBGLayer3);
			masterLayer.add(layerracingTrackGroupracingTrackGrouproad64x48_1);
			masterLayer.add(layerracingTrackGrouproad64x48_2);
			masterLayer.add(layerracingTrackGrouproad64x48_3);
			masterLayer.add(layerracingTrackGrouproad128x48);
			masterLayer.add(layerracingTrackGroup2road64x96_2);
			masterLayer.add(layerracingTrackGroup3road64x96_1);
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
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 492.000, 45.000, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 460.905, 41.208, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 429.810, 37.416, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 400.902, 41.817, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 375.832, 60.600, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 350.763, 79.384, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 325.694, 98.167, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 300.624, 116.950, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 275.555, 135.734, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 250.485, 154.517, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 225.416, 173.300, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 200.347, 192.083, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 175.277, 210.867, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 150.208, 229.650, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 125.139, 248.433, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 100.069, 267.217, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 75.000, 286.000, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
		}

		override public function addSpritesForLayerobstaclesGroupLaps(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 1071.000, 325.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 1344.000, 676.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 1303.000, 1187.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 588.000, 1099.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 486.000, 651.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 64.000, 458.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
			addSpriteToLayer(Checkpoint, obstaclesGroupLapsGroup , 427.000, 121.000, 0.000, false, 1, 1, onAddCallback );//"checkpoint"
		}

		override public function addSpritesForLayerobstaclesGroupstart(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Start, obstaclesGroupstartGroup , 969.000, 360.000, 0.000, false, 1, 1, onAddCallback );//"start"
		}

		override public function addSpritesForLayerobstaclesGroupLayer5(onAddCallback:Function = null):void
		{
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 1131.000, 311.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 1518.000, 746.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 1308.000, 1207.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 583.000, 1091.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 490.000, 652.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 231.000, 507.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
			addSpriteToLayer(CheckpointChecker, obstaclesGroupLayer5Group , 587.000, 122.000, 0.000, false, 1, 1, onAddCallback );//"checkpointChecker"
		}


	}
}
