# Thème KiCadMaxColors pour KiCad

Thème de couleurs pour KiCad (Schematic, PCB Layout et Footprint Editor).

## Caractéristiques

- **Fond gris foncé** (#1e1e1e)
- **Fils bleus** — wire, bus, labels sur fils
- **Pins rouges**
- **Symboles verts**
- **Texte blanc**
- **Palette unifiée** — mêmes couleurs pour schematic (symboles), PCB et footprint editor
- Compatible **eeschema**, **pcbnew** et **footprint editor**

## Installation

### Méthode 1 : Copie manuelle (recommandée)

1. Fermez KiCad si ouvert
2. Copiez le fichier `colors/KiCadMaxColors.json` vers le dossier colors de KiCad :

   **macOS :**
   ```bash
   mkdir -p ~/Library/Preferences/kicad/colors
   cp colors/KiCadMaxColors.json ~/Library/Preferences/kicad/colors/
   ```

   **Linux :**
   ```bash
   mkdir -p ~/.config/kicad/colors
   cp colors/KiCadMaxColors.json ~/.config/kicad/colors/
   ```

   **Windows :**
   ```powershell
   mkdir -p %APPDATA%\kicad\colors
   copy colors\KiCadMaxColors.json %APPDATA%\kicad\colors\
   ```

3. Ouvrez KiCad → Préférences → Thème de couleurs → sélectionnez **KiCadMaxColors**

### Méthode 2 : Plugin and Content Manager (PCM)

Si ce thème est publié dans un dépôt PCM :

1. KiCad → Préférences → Gestionnaire de plugins et de contenu
2. Ajoutez l'URL du dépôt si nécessaire
3. Installez le thème « KiCadMaxColors »

## Structure du package

```
KiCadMaxColors/
├── colors/
│   └── KiCadMaxColors.json   # Theme definition
├── metadata.json      # PCM metadata
├── build-package.sh   # Script to create the ZIP archive
└── README.md
```

## Références

- [KiCad Addons Documentation](https://dev-docs.kicad.org/en/addons/)

## Licence

CC0-1.0 (Domaine public)
