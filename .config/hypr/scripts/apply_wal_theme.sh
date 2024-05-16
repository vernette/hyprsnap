#!/bin/bash

theme_file="/tmp/theme_variant"
wal_arguments=""

if [ -s "$theme_file" ]; then
  case $(<"$theme_file") in
    "light") wal_arguments="lighten -l" ;;
  esac
fi

wal -i ~/Pictures/wallpaper.png --cols16 $wal_arguments -q -n -e

pgrep -x "waybar" > /dev/null && killall -SIGUSR2 waybar

wal-telegram --wal --tiled > /dev/null
spicetify apply -q -n
