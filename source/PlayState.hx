package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
    var bf:Character;
    var dad:Character;
    var gf:Character;
    var stage:Stage;
    var notes:FlxTypedGroup<Note>;
    var strumLine:FlxSprite;
    
    override public function new()
    {
        super();
    }
    
    override public function create():Void
    {
        super.create();
        
        // Load the Demon Slayer stage
        stage = new Stage('demon-slayer-temple');
        add(stage);
        
        // Initialize GF (Nezuko as supporter)
        gf = new Character(FlxG.width * 0.5, FlxG.height * 0.5, 'nezuko');
        gf.scrollFactor.set(0.95, 0.95);
        add(gf);
        
        // Initialize Dad (Tanjiro as the Hashira opponent)
        dad = new Character(FlxG.width * 0.75, FlxG.height * 0.5, 'tanjiro-hashira');
        dad.scrollFactor.set(0.9, 0.9);
        add(dad);
        
        // Initialize BF (Boyfriend)
        bf = new Character(FlxG.width * 0.25, FlxG.height * 0.5, 'bf');
        add(bf);
        
        // Create note group
        notes = new FlxTypedGroup<Note>();
        add(notes);
        
        // Create strum line
        strumLine = new FlxSprite(0, FlxG.height * 0.9).makeGraphic(FlxG.width, 150, FlxColor.TRANSPARENT);
        add(strumLine);
        
        // Load song data
        loadChart('hashira-showdown');
    }
    
    public function loadChart(chartName:String):Void
    {
        // Load JSON chart data
        var chartPath = 'data/' + chartName + '/' + chartName + '.json';
        // Parse and create notes from chart
    }
    
    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
        
        // Update character animations based on notes
        updateCharacterAnimations();
        
        // Check for note hits
        checkNoteHits();
    }
    
    private function updateCharacterAnimations():Void
    {
        // Animate characters based on gameplay
        if (FlxG.keys.justPressed.LEFT)
        {
            bf.playAnim('singLEFT');
        }
        if (FlxG.keys.justPressed.DOWN)
        {
            bf.playAnim('singDOWN');
        }
        if (FlxG.keys.justPressed.UP)
        {
            bf.playAnim('singUP');
        }
        if (FlxG.keys.justPressed.RIGHT)
        {
            bf.playAnim('singRIGHT');
        }
    }
    
    private function checkNoteHits():Void
    {
        // Check collision between player input and notes
        // Calculate accuracy and update score
    }
}
