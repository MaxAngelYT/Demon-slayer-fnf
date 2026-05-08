# Demon Slayer: Hashira Clash - FNF Mod

A Friday Night Funkin' mod featuring the iconic Hashira from the Demon Slayer anime in epic rap battles.

## Features

- **Multiple Hashira Characters**: Battle against Tanjiro, Rengoku, Giyu, Muichiro, Shinobu, Obanai, and Sanemi
- **Breathing Technique Animations**: Special animations for each character's unique breathing style
- **Demon Slayer Themed Stages**:
  - Temple Stage
  - Mountain Peak
  - Demon Slayer Headquarters
- **Dynamic Note System**: Different note types for regular attacks and breath techniques
- **Epic Soundtracks**: Original compositions inspired by Demon Slayer's musical themes

## Installation

1. Download the latest release
2. Extract to your FNF mods folder
3. Launch Friday Night Funkin' and select the mod from the mod menu

## Characters

### Playable
- **Boyfriend (BF)**: The classic FNF protagonist

### Opponents
- **Tanjiro (Hashira Form)**: Water Breathing Master
- **Rengoku**: Flame Breathing Master
- **Giyu**: Water Breathing Pillar
- **Muichiro**: Mist Breathing Master
- **Shinobu**: Insect Breathing Master
- **Obanai**: Serpent Breathing Master
- **Sanemi**: Wind Breathing Master

### Supporting
- **Nezuko**: Cheerleader character

## Songs

1. **Hashira Showdown**: 160 BPM - A high-energy battle against Tanjiro
2. *(More songs coming soon)*

## File Structure

```
├── mod.json                          # Mod metadata
├── source/                           # HaxeFlixel source code
│   ├── PlayState.hx                 # Main game state
│   ├── Character.hx                 # Character class with all Hashira
│   ├── Note.hx                      # Note class
│   ├── Stage.hx                     # Stage class
│   └── Main.hx                      # Main entry point
├── data/                            # Chart data (JSON)
│   └── hashira-showdown/
│       └── hashira-showdown.json
└── assets/                          # Graphics and audio
    ├── characters/
    ├── stages/
    └── songs/
```

## Development

To modify or develop this mod:

1. Install HaxeFlixel: `haxelib install flixel`
2. Edit the `.hx` files in the `source/` folder
3. Create chart files in JSON format in `data/`
4. Add character and stage sprites to `assets/`

## Credits

- Original FNF by Ninjamuffin99
- Demon Slayer anime by Ufotable
- Mod by MaxAngelYT

## License

This mod is a fan project and is not affiliated with the official Demon Slayer franchise.
