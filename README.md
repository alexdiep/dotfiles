# dotfiles
My personal configuration for linux. Pulls mainly from over people's configurations that may or may not be credited.
# Install
I use stow to link the dotfiles with the correct place. Default stow settings works if the repo is cloned in the home dir.
```sh
$ stow i3
$ stow zsh
$ stow whatever
```
# Usage
Restart whatever application to use new settings. i3 has a restart shortcut. X session can be restarted with `pkill x`.
Zsh load settings whenever its started (IIRC not everything but most).

# Programs
* i3 for window manager, latest version is required
* rofi for opening desktop applications
* compton for compposite manger
* urxvt for terminal
* zsh for shell
* dunst for nofications
* redshift for less eye burning
* network-manager for networking
* evince for pdf viewing

# Distros
I jump between them a lot so things change quite a bit. Right now I am using Arch Linux.
