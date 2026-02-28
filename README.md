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
├── metadata.json             # Package metadata (single version, no download_*)
├── build-package.sh          # Script to create the ZIP archive
├── build/
│   └── com.github.maximekahn.kicadmaxcolors_v1.0.0.zip
├── packages/
│   └── com.github.maximekahn.kicadmaxcolors/
│       └── metadata.json     # Repository metadata (for KiCad addons submission)
└── README.md
```

## Submitting to the official KiCad repository

1. **Upload the package** to [GitHub Releases](https://github.com/maximekahn/KiCadMaxColors/releases): upload `build/com.github.maximekahn.kicadmaxcolors_v1.0.0.zip` and create a release (e.g. v1.0.0). Use the direct download URL.
2. **Update `packages/com.github.maximekahn.kicadmaxcolors/metadata.json`** if your download URL differs from the default GitHub releases format.
3. **Clone the KiCad metadata repo**: `git clone https://gitlab.com/kicad/addons/metadata.git`
4. **Copy files**: Place `packages/com.github.maximekahn.kicadmaxcolors/metadata.json` (and `icon.png` if you have one) into `metadata/packages/com.github.maximekahn.kicadmaxcolors/`
5. **Validate**: Run `python tools/packager.py` from the metadata repo (after `pip install -r ci/requirements.txt`)
6. **Submit**: Create a branch, push to your fork, and open a merge request. See [KiCad Addons Documentation](https://dev-docs.kicad.org/en/addons/) for the full workflow.

## References

- [KiCad Addons Documentation](https://dev-docs.kicad.org/en/addons/)

## License

CC0-1.0 (Public domain)
