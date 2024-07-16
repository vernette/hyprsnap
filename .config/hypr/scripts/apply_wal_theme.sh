#!/bin/bash

THEME_FILE="/tmp/theme_variant"
wal_arguments=""

if [ -s "$THEME_FILE" ]; then
  case $(<"$THEME_FILE") in
    "light") wal_arguments="lighten -l" ;;
  esac
fi

wal -i ~/Pictures/wallpaper.png --cols16 $wal_arguments -q -n -e

pgrep -x "waybar" > /dev/null && killall -SIGUSR2 waybar

walogram -s > /dev/null
spicetify apply -q -n
