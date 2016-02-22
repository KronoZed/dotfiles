#!/bin/bash

if [[ -n "$*" ]]; then
    FILENAME="$*"
else
    FILENAME="$(date +'%Y-%m-%d_at_%H-%M-%S')_$HOSTNAME.png"
fi

scrot -q 100 ~/share/root.kronoz.guru/screenshots/${FILENAME}
URI="http://root.kronoz.guru/screenshots/${FILENAME}"
echo -n $URI | tee >(xclip) && echo
notify-send "Скриншот сделан и загружен на сервер root.kronoz.guru"
chromium http://root.kronoz.guru/screenshots/${FILENAME}
exit
