#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

xset -b

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrdb -load ~/.Xresources

mkdir -p ~/.log
exec i3 -V >> ~/.log/i3log-$(date +'%F-%k-%M-%S') 2>&1
