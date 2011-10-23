package

{

	import org.flixel.*;
	import ph.com.topgear.car.PlayerCar;
	import ph.com.topgear.car.PlayerGraphic;

	public class RacingCar extends PlayerCar
	{
		public function RacingCar(X:Number,Y:Number):void

		{
			super(X, Y, 45, 75);
			
		}
		override public function update():void
		{
			super.update();
		}
	}
}