#!/bin/sh
sleep 0.2 ; scrot -s '%Y-%m-%d_at_%I:%M:%S_$wx$h.png' -e 'mv $f ~/Картинки/screenshots && notify-send "Скриншот сделан и перенесён в папку ~/Картинки/screenshots/"'
