#!/bin/bash

source ./utils.sh

clear

if ! check_package_installed "gum"; then
  install_packages "gum"
fi
