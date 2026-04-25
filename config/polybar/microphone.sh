#!/usr/bin/env bash

muted=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')
volume=$(pactl get-source-volume @DEFAULT_SOURCE@ | awk -F'/' 'NR==1 {gsub(/ /,"",$2); print $2}')

if [ "$muted" = "yes" ]; then
    echo ""
else
    echo " $volume"
fi
