#!/usr/bin/bash

sudo pacman -Syu rofi polybar picom feh maim

if ! command -v "yay" &> /dev/null; then
    echo "yay not found in PATH"
    echo "installing yay"
    bash "~/dotfiles/scripts/yay_setup.sh"
else
    echo "yay found in PATH"
fi

yay -Syu i3lock-color
