#!/bin/bash

source setup.sh
clear

gum style \
  --align center \
  --border rounded \
  --margin "1" \
  --padding "1" \
  --border-foreground "$gray" \
  "$(style_text 'Hyprsnap' "$green") Installation Script" \
  "Version $(style_text '0.0.1' "$red")"

required_pacman_packages=(
  "kitty"
  "ttf-jetbrains-mono-nerd"
  "noto-fonts-emoji"
  "lf"
  "grim"
  "slurp"
  "wl-clipboard"
  "hyprland"
  "waybar"
  "zsh"
  "playerctl"
  "lsd"
  "libnotify"
  "hyprlang"
  "hyprlock"
  "hypridle"
  "swaync"
  "neovim"
  "fastfetch"
)

gum spin --spinner dot --title "Checking pacman packages..." -- sleep 2

for package in "${required_pacman_packages[@]}"; do
  if ! check_package_installed "$package"; then
    add_package_to_missing "$package" "pacman"
  fi
done

if [ ${#missing_pacman_packages[@]} -gt 0 ]; then
  echo "Missing pacman packages: ${missing_pacman_packages[*]}"
fi
# echo "Missing AUR packages: ${missing_aur_packages[*]}"
