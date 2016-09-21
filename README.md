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
