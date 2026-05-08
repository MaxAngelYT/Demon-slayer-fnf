package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrame;

class Character extends FlxSprite
{
    public var characterName:String = "";
    public var isPlayer:Bool = false;
    
    public function new(x:Float = 0, y:Float = 0, character:String = "bf")
    {
        super(x, y);
        characterName = character;
        loadCharacter(character);
    }
    
    public function loadCharacter(character:String):Void
    {
        switch(character)
        {
            case 'bf':
                loadBF();
            case 'tanjiro-hashira':
                loadTanjiroHashira();
            case 'nezuko':
                loadNezuko();
            case 'rengoku':
                loadRengoku();
            case 'giyu':
                loadGiyu();
            case 'muichiro':
                loadMuichiro();
            case 'shinobu':
                loadShinobu();
            case 'obanai':
                loadObanai();
            case 'sanemi':
                loadSanemi();
            default:
                loadBF();
        }
    }
    
    private function loadBF():Void
    {
        // Load BF sprite and animations
        loadGraphic('assets/characters/bf/bf.png', true, 370, 370);
        addAnimation('idle', [0, 1], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    private function loadTanjiroHashira():Void
    {
        // Load Tanjiro as Hashira with Water Breathing techniques
        loadGraphic('assets/characters/tanjiro-hashira/tanjiro-hashira.png', true, 400, 400);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
        addAnimation('miss', [28, 29, 30], 24, false);
    }
    
    private function loadNezuko():Void
    {
        // Load Nezuko as supporter/GF
        loadGraphic('assets/characters/nezuko/nezuko.png', true, 380, 380);
        addAnimation('idle', [0, 1], 24, true);
        addAnimation('cheer', [4, 5, 6, 7], 24, true);
    }
    
    private function loadRengoku():Void
    {
        // Load Rengoku with Flame Breathing
        loadGraphic('assets/characters/rengoku/rengoku.png', true, 400, 400);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    private function loadGiyu():Void
    {
        // Load Giyu with Water Breathing
        loadGraphic('assets/characters/giyu/giyu.png', true, 400, 400);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    private function loadMuichiro():Void
    {
        // Load Muichiro with Mist Breathing
        loadGraphic('assets/characters/muichiro/muichiro.png', true, 400, 400);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    private function loadShinobu():Void
    {
        // Load Shinobu with Insect Breathing
        loadGraphic('assets/characters/shinobu/shinobu.png', true, 380, 380);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    private function loadObanai():Void
    {
        // Load Obanai with Serpent Breathing
        loadGraphic('assets/characters/obanai/obanai.png', true, 400, 400);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    private function loadSanemi():Void
    {
        // Load Sanemi with Wind Breathing
        loadGraphic('assets/characters/sanemi/sanemi.png', true, 400, 400);
        addAnimation('idle', [0, 1, 2], 24, true);
        addAnimation('singLEFT', [12, 13, 14, 15], 24, false);
        addAnimation('singDOWN', [6, 7, 8, 9], 24, false);
        addAnimation('singUP', [24, 25, 26, 27], 24, false);
        addAnimation('singRIGHT', [18, 19, 20, 21], 24, false);
    }
    
    public function playAnim(name:String, forced:Bool = false):Void
    {
        animation.play(name, forced);
    }
}
