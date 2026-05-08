package;

import flixel.FlxSprite;
import flixel.util.FlxColor;

class Note extends FlxSprite
{
    public var strumTime:Float = 0;
    public var noteData:Int = 0; // 0 = left, 1 = down, 2 = up, 3 = right
    public var isSustainNote:Bool = false;
    public var noteType:String = "normal"; // normal, breath-technique, demon-attack
    
    public function new(x:Float, y:Float, noteData:Int, strumTime:Float, ?noteType:String = "normal")
    {
        super(x, y);
        this.noteData = noteData;
        this.strumTime = strumTime;
        this.noteType = noteType;
        
        loadNote();
    }
    
    private function loadNote():Void
    {
        makeGraphic(80, 80);
        
        switch(noteType)
        {
            case "breath-technique":
                // Blue color for breath techniques (Water Breathing)
                color = FlxColor.CYAN;
            case "demon-attack":
                // Red color for demon attacks
                color = FlxColor.RED;
            default:
                // Default yellow
                color = FlxColor.YELLOW;
        }
        
        // Animation for note appearance
        alpha = 0.8;
    }
    
    public function getAccuracy(playerTime:Float):String
    {
        var timeDiff:Float = Math.abs(playerTime - strumTime);
        
        if (timeDiff < 45) return "SICK";
        if (timeDiff < 90) return "GOOD";
        if (timeDiff < 135) return "BAD";
        return "MISS";
    }
}
