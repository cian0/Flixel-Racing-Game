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


			if ( addToStage )
			{
				addSpritesForLayerplayerGroupraceCar(onAddSpritesCallback);
				addSpritesForLayerobstaclesGroupobstacle1(onAddSpritesCallback);
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
			addSpriteToLayer(RacingCar, playerGroupraceCarGroup , 307.000, 193.000, 0.000, false, 1, 1, onAddCallback );//"raceCar"
		}

		override public function addSpritesForLayerobstaclesGroupobstacle1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 247.189, 156.986, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 222.591, 175.417, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 197.992, 193.847, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 173.394, 212.278, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 148.795, 230.708, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 124.197, 249.139, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 99.598, 267.569, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 75.000, 286.000, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 857.000, 311.000, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 832.159, 292.897, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 807.319, 274.794, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 782.478, 256.691, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 757.638, 238.588, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 732.797, 220.485, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 707.957, 202.382, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 683.116, 184.279, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 658.276, 166.176, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 633.435, 148.073, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 608.595, 129.970, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 583.754, 111.867, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 558.914, 93.764, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 534.073, 75.661, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 509.233, 57.559, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 482.655, 43.860, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 452.144, 40.140, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 421.633, 36.419, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 394.780, 46.403, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 370.182, 64.834, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 345.583, 83.264, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 320.985, 101.695, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 296.386, 120.125, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
			addSpriteToLayer(RoadBlock, obstaclesGroupobstacle1Group , 271.788, 138.556, 0.000, false, 1, 1, onAddCallback );//"RoadBlock"
		}


	}
}
