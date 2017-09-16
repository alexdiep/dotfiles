#!/bin/bash

PROGRAMS=(
acpi
acpid
adobe-source-code-pro-fonts
alsa-utils
atool
dunst
evince
feh
firefox
gnome-keyring
gvim
i3-wm
i3status
network-manager-applet
networkmanager
pavucontrol
pulseaudio
pulseaudio-alsa
rclone
redshift
rofi
rxvt-unicode
seahorse
stow
tlp
ttf-dejavu
ttf-hack
udiskie
urxvt-perls
xclip
xf86-video-intel
xorg
xorg-xinit
xterm
zsh
)

echo "Installing ${PROGRAMS[*]}"
sudo pacman -Syu ${PROGRAMS[*]}

echo "Stowing $(ls -d */)"
stow $(ls -d */)
