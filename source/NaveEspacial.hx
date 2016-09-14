package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;


class NaveEspacial extends FlxSprite
{
	
	public function new(?X:Float, ?Y:Float, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic(AssetPaths.Nave__png);
	}
	
}