# Post installation script
The idea is to create a post installation script which can be ran after a new and fresh system install.
It will
1. Prompt which applications to install via a GUI selector.
2. Install these applications.
3. Do post install configuration and setup.
This is another idea

Add a video idea reference here later...

## Arch linux applications needed

## Essential:
- `base-devel`: Basic tools to build Arch Linux packages.

- `devtools`: Tools for Arch Linux package maintainers.

### Window managers

### Different window managers 
`sway` - a drop in placement for i3 but for wayland

### window manager dependencies
`waybar` - a cool bar to combine with sway
`tofi` - a simple application launcher for wayland
`swaybg` - tool to set wallpapers on wayland
`swaync` - notification daemon
`brightnessctl` - tool for controlling laptop screen brightness
`grim`- screenshot utility for wayland
`slurp` - utility to select a region on the screen on wayland
`wl-clipboard` - clipboard commands such as `wl-copy` and `wl-paste` for wayland

### Command line applications:

#### Utilities
`bluetoothctl` - for managing bluetooth connections (for arch the package is **bluez-utils**)
`man-db` - for man page database
`unzip` - for unzipping .zip files
`stow` - for managing dotfiles
`fzf` - command line fuzzy finder
`bat` - for file preview with code highlighting
`lazygit` - tui for git

#### Development stuff
`mongodb` - database
`mongosh` - scriptable cli client for mongodb

#### Application dependencies
`nodejs` - A javascript runtime, required by neovim plugins
`npm` - A nodejs package manager, required by neovim plugins

## Post install configuration and setup
The post install script would install all the apps 
and apply configuration for them. 

It would download nerd fonts and move them to ~/.local/share/fonts/[FontName]/
howto: host the fonts in this dotfiles repo or in a http server.

script would also add $HOME/.local/bin to the path
