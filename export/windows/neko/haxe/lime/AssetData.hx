package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/images/disparo.png", "assets/images/disparo.png");
			type.set ("assets/images/disparo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Enemigo.png", "assets/images/Enemigo.png");
			type.set ("assets/images/Enemigo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Nave.png", "assets/images/Nave.png");
			type.set ("assets/images/Nave.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/music/MusicaSpace.wav", "assets/music/MusicaSpace.wav");
			type.set ("assets/music/MusicaSpace.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/Explosion.wav", "assets/sounds/Explosion.wav");
			type.set ("assets/sounds/Explosion.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/sounds/Laser_Shoot4.wav", "assets/sounds/Laser_Shoot4.wav");
			type.set ("assets/sounds/Laser_Shoot4.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
