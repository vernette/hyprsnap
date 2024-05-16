#!/bin/bash

gnome_schema="org.gnome.desktop.interface"
theme_file="/tmp/theme_variant"

if [ ! -s "$theme_file" ]; then
  echo "dark" > "$theme_file"
else
  current_theme_variant=$(<"$theme_file")

  case $current_theme_variant in
    "dark")
      new_theme_variant="light"
      ;;
    "light")
      new_theme_variant="dark"
      ;;
  esac

  echo "$new_theme_variant" > "$theme_file"
fi

. ~/.config/hypr/scripts/apply_wal_theme.sh

if [ "$new_theme_variant" = "dark" ]; then
  gtk_theme="adw-gtk3-dark"
else
  gtk_theme="adw-gtk3"
fi

gsettings set $gnome_schema gtk-theme "$gtk_theme"
gsettings set $gnome_schema color-scheme "prefer-$new_theme_variant"
