#!/usr/bin/env bash

if pgrep -x wl-screenrec > /dev/null; then
    pkill -INT -x wl-screenrec
else
    mkdir -p "$HOME/Videos"

    wl-screenrec \
        --audio \
        --encode-resolution 1920x1080 \
        -f "$HOME/Videos/video-$(date +%Y-%m-%d-%H-%M-%S).mp4"
fi
