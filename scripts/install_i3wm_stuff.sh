if ! command -v pacman &> /dev/null
then
    echo "this package manager is not yet supported"
    exit 1
fi

sudo pacman -Syu rofi polybar picom feh maim

# building yay for aur  packages
pacman -Sy --needed git base-devel
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Syu i3lock-color
