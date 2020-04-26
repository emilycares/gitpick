#!/bin/bash

pick=$(dirname $(readlink -f $0))/pick.txt

line=$(cat $pick | rofi -dmenu)
simbol=$(cut -d "|" -f2 <<< "$line")
echo -n "$simbol " | xclip -sel clip
