package;

import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.util.FlxColor;

class Stage extends FlxTypedGroup<FlxSprite>
{
    public var stageName:String = "";
    public var background:FlxSprite;
    public var foreground:FlxSprite;
    
    public function new(stageName:String)
    {
        super();
        this.stageName = stageName;
        loadStage();
    }
    
    public function loadStage():Void
    {
        switch(stageName)
        {
            case "demon-slayer-temple":
                loadTempleStage();
            case "mountain-peak":
                loadMountainStage();
            case "demon-slayer-headquarters":
                loadHeadquartersStage();
            default:
                loadTempleStage();
        }
    }
    
    private function loadTempleStage():Void
    {
        // Load background
        background = new FlxSprite(0, 0);
        background.loadGraphic('assets/stages/temple/bg.png');
        background.scrollFactor.set(0.1, 0.1);
        add(background);
        
        // Add temple pillars or structure
        var pillar1:FlxSprite = new FlxSprite(100, 200);
        pillar1.makeGraphic(100, 400, FlxColor.fromRGB(120, 80, 40));
        pillar1.scrollFactor.set(0.8, 0.8);
        add(pillar1);
        
        // Foreground
        foreground = new FlxSprite(0, 0);
        foreground.loadGraphic('assets/stages/temple/fg.png');
        foreground.scrollFactor.set(1.2, 1.2);
        add(foreground);
    }
    
    private function loadMountainStage():Void
    {
        // Mountain background with clouds
        background = new FlxSprite(0, 0);
        background.loadGraphic('assets/stages/mountain/bg.png');
        background.scrollFactor.set(0.05, 0.05);
        add(background);
        
        // Add mountain foreground
        foreground = new FlxSprite(0, 300);
        foreground.loadGraphic('assets/stages/mountain/fg.png');
        foreground.scrollFactor.set(1.0, 1.0);
        add(foreground);
    }
    
    private function loadHeadquartersStage():Void
    {
        // Demon Slayer headquarters
        background = new FlxSprite(0, 0);
        background.loadGraphic('assets/stages/headquarters/bg.png');
        background.scrollFactor.set(0.2, 0.2);
        add(background);
        
        foreground = new FlxSprite(0, 0);
        foreground.loadGraphic('assets/stages/headquarters/fg.png');
        foreground.scrollFactor.set(1.0, 1.0);
        add(foreground);
    }
}
