#!/bin/bash

if [[ -n "$*" ]]; then
    FILENAME="$*"
else
    FILENAME="$(date +'%Y-%m-%d_at_%H-%M-%S')_$HOSTNAME.png"
fi

if  sleep 0.2 ; scrot -s -q 100 ~/share/root.kronoz.guru/screenshots/${FILENAME} ; then
    notify-send -u low -t 1500 "Скриншот ${FILENAME} сделан и загружен на сервер root.kronoz.guru"

    URI="http://root.kronoz.guru/screenshots/${FILENAME}"
    echo -n $URI | tee >(xclip) && echo

    chromium http://root.kronoz.guru/screenshots/${FILENAME}
else
    notify-send -u critical -t 3000 "Не удалось сделать скриншот"
fi

exit
