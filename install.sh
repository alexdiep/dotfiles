#!/bin/bash

PROGRAMS=(
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
             xorg-xbacklight
             zsh
         )


echo "Installing ${PROGRAMS[*]}"
sudo pacman -Syu ${PROGRAMS[*]}

echo "Stowing $(ls -d */)"
stow $(ls -d */)
