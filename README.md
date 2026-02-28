# KiCadMaxColors Theme for KiCad

Color theme for KiCad (Schematic, PCB Layout and Footprint Editor).

## Features

- **Dark gray background** (#1e1e1e)
- **Blue wires** — wire, bus, labels on wires
- **Red pins**
- **Green symbols**
- **White text**
- **Unified palette** — same colors for schematic (symbols), PCB and footprint editor
- Compatible with **eeschema**, **pcbnew** and **footprint editor**

## Installation

### Method 1: Plugin and Content Manager (PCM) (recommended)

If this theme is published in a PCM repository:

1. KiCad → Preferences → Plugin and Content Manager
2. Add the repository URL if needed
3. Install the "KiCadMaxColors" theme

### Method 2: Manual copy

1. Close KiCad if it is open
2. Copy the file `colors/KiCadMaxColors.json` to KiCad's colors folder:

   **macOS:**
   ```bash
   mkdir -p ~/Library/Preferences/kicad/colors
   cp colors/KiCadMaxColors.json ~/Library/Preferences/kicad/colors/
   ```

   **Linux:**
   ```bash
   mkdir -p ~/.config/kicad/colors
   cp colors/KiCadMaxColors.json ~/.config/kicad/colors/
   ```

   **Windows:**
   ```powershell
   mkdir -p %APPDATA%\kicad\colors
   copy colors\KiCadMaxColors.json %APPDATA%\kicad\colors\
   ```

3. Open KiCad → Preferences → Color theme → select **KiCadMaxColors**

## Package structure

```
KiCadMaxColors/
├── colors/
│   └── KiCadMaxColors.json   # Theme definition
├── metadata.json      # PCM metadata
├── build-package.sh   # Script to create the ZIP archive
└── README.md
```

## References

- [KiCad Addons Documentation](https://dev-docs.kicad.org/en/addons/)

## License

CC0-1.0 (Public domain)
