package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
	

class Aliens extends FlxSprite
{
	public var movement:Bool = true; // TRUE: DERECHA , FALSE: IZQUIERDA
	public var xlimitder:Float = 0;
	public var xlimitizq:Float = 0;
	
	public function new(X:Float, Y:Float)
	{
		super(X, Y, null);
		loadGraphic(AssetPaths.Enemigo__png);
		x = X;
		y = Y;
		xlimitder = X + 20;
		xlimitizq = X - 20;
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		/*
		if (x = xlimitder)
		{
			movement = false;
			rupoenemigo.members[i].y -= 20;
		}
		if (x = xlimitizq) 
		{
			movement = true;
		}
		
		if (movement = true)
		{
			x += 0.7;
		}
		if (movement = false)
		{
			x -= 0.7;
		}
		*/
	}
}