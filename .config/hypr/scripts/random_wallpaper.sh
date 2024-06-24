#!/bin/bash

image_dir="$HOME/Pictures/wallpapers"
images=("$image_dir"/*.png)

random_image="${images[RANDOM % ${#images[@]}]}"

if [ -z "$random_image" ]; then
  echo "No images found in the directory."
  exit 1
fi

ln -sf "$random_image" ~/Pictures/wallpaper.png

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
  . ~/.config/hypr/scripts/set_wallpaper.sh
else
  i3-msg restart
fi

notify-send -a "Wallpaper selector" "Wallpaper changed" "$random_image" -i ~/Pictures/wallpaper.png
. ~/.config/hypr/scripts/apply_wal_theme.sh
