if ! command -v pacman &> /dev/null
then
    echo "this package manager is not yet supported"
    exit 1
fi

sudo pacman -Syu kitty neovim docker docker-compose git fish flatpak unrar unzip npm
