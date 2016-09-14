package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

class Disparo extends FlxSprite
{
	public var boop:Bool = false;
	
	public function new(X:Float, Y:Float, width:Float, height:Float) 
	{
		super(X, Y, null);
		
			loadGraphic(AssetPaths.disparo__png);
			velocity.y = -150;
			x = X + (width/2) - 1.5;
			y = Y - 4;
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (y < 0) 
		{
			destroy();
		}
		
	}
}