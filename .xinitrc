#!/bin/sh

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

session=${1:-subtle}    # Subtle WM передаётся по умолчанию

case $session in
    awesome           ) exec awesome;;
    bspwm             ) exec bspwm;;
    dwm               ) exec dwm;;
    i3|i3wm           ) exec i3;;
    jwm               ) exec jwm;;
    monster|monsterwm ) exec monsterwm;;
    subtle            ) exec subtle --config ~/.config/subtle/subtle.rb;;
    herbstluft        ) exec herbstluftwm;;
    openbox           ) exec openbox-session;;
    xfce|xfce4        ) exec startxfce4;;
    xmonad            ) exec xmonad;;
    # Не известная сессия, попробуйте запустить в качестве команды
    *) exec $1;;
esac
