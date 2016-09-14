package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;

class MenuState extends FlxState
{
	private var jugador:NaveEspacial;
	private var grupoenemigo:FlxGroup;
	private var attack:Disparo;
	
	override public function create():Void
	{
		super.create();
		Reg.highscore = 1000;
		Reg.highscore += Reg.puntosOvni;
		grupoenemigo = new FlxGroup();
		
		// PRIMERA FILA
		var enemigo:Aliens = new Aliens(13, 10);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (33, 10);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (53, 10);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (73, 10);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (93, 10);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (113, 10);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (133, 10);
		grupoenemigo.add(enemigo);
		// SEGUNDA FILA
		enemigo = new Aliens(13, 30);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (33, 30);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (53, 30);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (73, 30);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (93, 30);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (113, 30);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (133, 30);
		grupoenemigo.add(enemigo);
		// TERCERA FILA
		enemigo = new Aliens(13, 50);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (33, 50);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (53, 50);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (73, 50);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (93, 50);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (113, 50);
		grupoenemigo.add(enemigo);
		
		enemigo = new Aliens (133, 50);
		grupoenemigo.add(enemigo);
		// FIN DE ENEMIGOS
		
		jugador = new NaveEspacial(75, 128);
		
		add(jugador);
		add(grupoenemigo);
		
		//FlxG.sound.playMusic(AssetPaths.MusicaSpace__wav);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (jugador.x < FlxG.width - jugador.width)
		{
			if (FlxG.keys.pressed.RIGHT)
			jugador.x += 1;
		}
		if (jugador.x > 0) 
		{
			if (FlxG.keys.pressed.LEFT)
			jugador.x -= 1;
		}
		if (FlxG.keys.justPressed.X) 
		{
				var attack:Disparo = new Disparo(jugador.x, jugador.y, jugador.width, jugador.height);
				FlxG.sound.play(AssetPaths.Laser_Shoot4__wav);
				add(attack);
		}
		
		for (i in 0...grupoenemigo.length) 
		{
			if (FlxG.overlap(attack, grupoenemigo.members[i]))
				grupoenemigo.members[i].kill();
				if (attack.exists) 
					attack.kill();
				
		}
	}
}
