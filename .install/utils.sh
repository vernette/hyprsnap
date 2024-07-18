#!/bin/bash

black="#212121"
white="#EEEEEE"
red="#F44336"
green="#8BC34A"
blue="#3F51B5"
yellow="#FFEB3B"
purple="#9C27B0"
cyan="#00BCD4"
gray="#616161"

check_package_installed() {
  local package="$1"
  if pacman -Q "$package" >/dev/null; then
    echo "$package is installed"
    return 0
  else
    echo "$package is not installed"
    return 1
  fi
}

install_packages() {
  local noconfirm="--noconfirm"
  if [ "$#" -eq 1 ]; then
    sudo pacman -S "$1" "$noconfirm"
  else
    sudo pacman -S "${@}" "$noconfirm"
  fi
}

add_package_to_missing() {
  local package="$1"
  local repo="$2"
  if [ "$repo" = "pacman" ]; then
    missing_pacman_packages+=("$package")
  elif [ "$repo" = "aur" ]; then
    missing_aur_packages+=("$package")
  fi
}

style_text() {
  gum style --foreground "$2" "$1"
}
