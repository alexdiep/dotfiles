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
            gvim
            i3-wm
            i3status
            network-manager-applet
            networkmanager
            rclone
            redshift
            rofi
            rxvt-unicode
            stow
            tlp
            ttf-dejavu
            ttf-hack
            urxvt-perls
            xclip
            xf86-video-intel
            xorg
            xorg-init
            zsh
         )


echo "Installing ${PROGRAMS[*]}"
sudo pacman -Syu ${PROGRAMS[*]}

echo "Stowing $(ls -d */)"
stow $(ls -d */)
