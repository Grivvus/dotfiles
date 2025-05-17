#/usr/bin/bash
echo "building yay"
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
echo "build finished"

read -p "do you want to install all previous yay packages [y|n] " ans
if [ $ans = "y" ]; then
    yay -Syu - < ~/dotfiles/installed.yay
fi
