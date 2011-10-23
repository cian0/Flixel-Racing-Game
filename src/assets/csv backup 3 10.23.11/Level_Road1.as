//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
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
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 366.000, 51.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 340.000, 71.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 312.000, 93.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 283.000, 110.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 255.000, 127.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 226.000, 152.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 193.000, 174.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 157.000, 196.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 128.000, 224.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 101.000, 247.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 70.000, 271.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 231.000, 418.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 260.000, 397.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 289.000, 376.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 320.000, 354.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 348.000, 331.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 374.000, 312.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 405.000, 293.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(Obstacle2, obstaclesGroupobstacle1Group , 436.000, 270.000, 0.000, false, 1, 1, onAddCallback );//"Obstacle2"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 49.000, 294.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 45.000, 333.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
			addSpriteToLayer(RoadBlocks, obstaclesGroupobstacle1Group , 47.000, 372.000, 0.000, false, 1, 1, onAddCallback );//"obstacle1"
		}


	}
}
