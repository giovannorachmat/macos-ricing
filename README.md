# macOS Ricing Configuration

A comprehensive macOS desktop customization setup featuring tiling window management, system monitoring, and aesthetic theming. This configuration creates a productivity-focused, keyboard-driven environment optimized for MacBook Pro users.

## 🎯 Overview

This repository provides a complete desktop environment customization for macOS using modern open-source tools:

- **Aerospace** - Modern tiling window manager
- **SketchyBar** - Customizable menu bar replacement
- **Borders** - Window border customization
- **Catppuccin theme** - Consistent color scheme throughout

## ✨ Features

### Window Management
- Tiling window management with automatic layouts
- Multi-monitor support with workspace assignment
- Application-specific floating rules
- Keyboard-driven navigation (Vim-style)
- Gap customization per device

### System Monitoring (SketchyBar)
- **Real-time monitoring**: CPU usage with graphs, RAM percentage, battery status
- **Network**: WiFi connectivity status
- **Application info**: Current focused app, workspace indicator
- **Utilities**: Calendar, weather, volume control, clock
- **Package management**: Homebrew update notifications

### Visual Customization
- **Catppuccin color scheme** for consistent theming
- **SF Symbols icons** for modern appearance
- **Custom window borders** with rounded corners
- **SF Pro font family** for clean typography

## 📋 Requirements

### System Requirements
- macOS (Apple Silicon or Intel)
- SIP disabled (for window managers)
- Homebrew package manager

### Core Dependencies
```bash
# Window Manager
brew install --cask aerospace

# Status Bar
brew install --cask sketchybar

# Window Borders
brew install borders
```

### Optional Tools
```bash
# Alternative Window Manager
brew install yabai skhd

# Terminal & System Monitor
brew install --cask kitty
brew install btop
```

## 🚀 Installation

### 1. Install Homebrew
If you don't have Homebrew installed:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install Core Applications
```bash
# Install window manager
brew install --cask aerospace

# Install status bar
brew install --cask sketchybar

# Install window borders
brew install borders
```

### 3. Clone This Repository
```bash
git clone https://github.com/yourusername/macos-ricing.git
cd macos-ricing
```

### 4. Setup Configuration Files

#### Aerospace Configuration
```bash
# For 13" MacBook
mkdir -p ~/.config/aerospace
cp aerospace/macbook13/aerospace.toml ~/.config/aerospace/

# For 14" MacBook
# cp aerospace/macbook14/aerospace.toml ~/.config/aerospace/
```

#### SketchyBar Configuration
```bash
# Create sketchybar directory and copy files
mkdir -p ~/.config/sketchybar
cp -r sketchybar/* ~/.config/sketchybar/

# Make scripts executable
chmod +x ~/.config/sketchybar/items/*.sh
chmod +x ~/.config/sketchybar/plugins/*.sh
chmod +x ~/.config/sketchybar/*.sh
```

#### Borders Configuration
```bash
cp borders/bordersrc ~/.config/
```

### 5. Disable System Integrity Protection (SIP)

⚠️ **Warning**: This is required if you use yabai as the tiling window manager. If not, then skip this step.

1. Restart your Mac and hold `Command + R` to enter Recovery Mode
2. Open Terminal from the Utilities menu
3. Run: `csrutil disable`
4. Restart your Mac

### 6. Enable Services

#### Start Aerospace
```bash
# Load the configuration
aerospace config reload

# Enable Aerospace (runs automatically on login)
brew services start aerospace
```

#### Start SketchyBar
```bash
# Launch SketchyBar
sketchybar --load ~/.config/sketchybar/sketchybarrc

# Enable on login (add to login items or shell profile)
echo "sketchybar --load ~/.config/sketchybar/sketchybarrc" >> ~/.zshrc
```

#### Start Borders
```bash
# Enable borders on login
echo "borders active_color=0xffe0afff inactive_color=0xff494d64 width=5.0" >> ~/.zshrc
```

### 7. Restart Your System
After completing all steps, restart your Mac to ensure all services start correctly.

## 📁 Repository Structure

```
macos-ricing/
├── aerospace/              # Aerospace window manager configs
│   ├── macbook13/         # 13" MacBook configuration
│   └── macbook14/         # 14" MacBook configuration
├── sketchybar/            # SketchyBar status bar setup
│   ├── items/             # Status bar item scripts
│   ├── plugins/           # Backend functionality scripts
│   ├── colors.sh          # Color definitions
│   ├── icons.sh           # SF Symbols mappings
│   └── sketchybarrc       # Main configuration
├── yabai/                 # Alternative window manager
├── skhd/                  # Hotkey daemon for Yabai
└── borders/               # Window border customization
```

## 🔧 Troubleshooting

### Common Issues

#### Aerospace not working
- Ensure SIP is disabled
- Check configuration: `aerospace config validate`
- Reload config: `aerospace config reload`

#### SketchyBar not showing
- Check if service is running: `brew services list | grep sketchybar`
- Manually load: `sketchybar --load ~/.config/sketchybar/sketchybarrc`
- Check logs: `sketchybar --log-level debug`

#### Window borders not appearing
- Ensure borders is installed: `brew list borders`
- Manually start: `borders active_color=0xffe0afff inactive_color=0xff494d64 width=5.0`

### Getting Help
- Check each tool's documentation:
  - [Aerospace Documentation](https://nikitabobko.github.io/AeroSpace/)
  - [SketchyBar Documentation](https://felixkratz.github.io/SketchyBar/)
  - [Borders GitHub](https://github.com/FelixKratz/Borders)

## 🤝 Contributing

Feel free to submit issues, enhancement requests, or pull requests to improve this configuration setup.

## 📄 License

This repository follows the MIT License. Feel free to use and modify these configurations for your personal setup.

---

**Note**: This setup is optimized for MacBook Pro 13" and 14" models but can be adapted for other Mac configurations. Adjust the gap settings and workspace assignments based on your specific hardware setup.

**Disclaimer**: This markdown is generated using OpenCode Big Pickle model.
