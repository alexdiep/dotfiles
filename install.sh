#!/bin/bash

PROGRAMS=(
	     acpi
	     alsa-utils
	     networkmanager
	     ttf-dejavu
	     ttf-hack
	     urxvt-perls
	     xclip
	     xorg
	     xorg-init
             acpid
             atool
             dunst
             feh
             firefox
             gvim
             i3-wm
             i3status
             network-manager-applet
             rclone
             redshift
             rofi
             rxvt-unicode
             stow
             tlp
             zsh
         )


echo "Installing ${PROGRAMS[*]}"
sudo pacman -Syu ${PROGRAMS[*]}

echo "Stowing $(ls -d */)"
stow $(ls -d */)
