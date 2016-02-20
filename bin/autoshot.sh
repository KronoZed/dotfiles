#!/bin/bash
while true;
do
scrot -d 5 -q 50 '%Y-%m-%d_%H:%M:%S.jpg' -e 'mv $f ~/Картинки/screenshots/';
done
