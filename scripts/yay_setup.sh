#/usr/bin/bash
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

yay -Syu - < ~/dotfiles/installed.yay
