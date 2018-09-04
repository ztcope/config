#!/bin/bash

BACKGROUND="$HOME/.config/i3/backgrounds/registeel.png"
COLOR=#888888

exec xautolock -detectsleep \
    -time 30 -locker "i3lock -c $COLOR" \
    -notify 60 \
    -notifier "notify-send -u critical -t 10000 -- 'LOCKING SCREEN IN 60 SECONDS 60 seconds'"
