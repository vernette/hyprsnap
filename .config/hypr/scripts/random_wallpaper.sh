#!/bin/bash

image_dir="$HOME/Pictures/wallpapers"

if [ ! -d "$image_dir" ]; then
  notify-send -a "Wallpaper selector" "Images directory does not exist" "$image_dir"
  exit 1
fi

images=("$image_dir"/*)

if [ ${#images[@]} -eq 0 ]; then
  notify-send -a "Wallpaper selector" "No images found in $image_dir"
  exit 1
fi

current_image="$image_dir/wallpaper.png"

random_image="${images[RANDOM % ${#images[@]}]}"

while [ "$random_image" -ef "$current_image" ]; do
	random_image="${images[RANDOM % ${#images[@]}]}"
done

ln -sf "$random_image" ~/Pictures/wallpaper.png

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
	. ~/.config/hypr/scripts/set_wallpaper.sh
else
	i3-msg restart
fi

notify-send -a "Wallpaper selector" "Wallpaper changed" "$random_image" -i ~/Pictures/wallpaper.png
. ~/.config/hypr/scripts/apply_wal_theme.sh
