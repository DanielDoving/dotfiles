#!/bin/bash

if [[ $1 == "flameshot" ]];then
    exit
fi;

# if [[ $1 == "Firefox" ]];then
#     paplay /home/daniel/Music/notifications/discord-notification.mp3
#     exit
# fi;

paplay "$(find /home/daniel/Music/notifications/ -name '*.mp3' | sort -R | tail -1)"
