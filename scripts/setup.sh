sh ./install_tools.sh

read -p "do you want to install flatpak pkgs? [y|n] " ans
if [ $ans = "y" ]; then
    sh ./install_flatpaks.sh
fi 

read -p "do you want to install i3 stuff? [y|n] " ans
if [ $ans = "y" ]; then
    sh ./install_i3wm_stuff.sh
fi 

ssh-keygen -t ed25519 -C "kruchik.a04@gmail.com"

cat ~/.ssh/id_ed25519.pub

read -p "do you setup ssh connection with github? [y|n] " ans
if [ $ans = "y" ]; then
    git clone git@github.com:Grivvus/dotfiles.git
    cd dotfiles/
    cp config/* ~/.config/ -r
    
    echo "fetching wallpapers will be in future"
fi
