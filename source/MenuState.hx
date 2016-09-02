package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	private var jugador:FlxSprite;
	override public function create():Void
	{
		super.create();
		Reg.highscore = 1000;
		Reg.highscore += Reg.puntosOvni;
		jugador = new FlxSprite();
		jugador.loadGraphic(AssetPaths.descarga__png); // Modificar a 15x15
		add(jugador);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		//Movimiento_nave.keys();
		if (FlxG.keys.pressed.RIGHT)
			jugador.x += 2;
		if (FlxG.keys.pressed.LEFT)
			jugador.x -= 2;
	}
}
