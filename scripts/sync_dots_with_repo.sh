cp ~/.config/i3/* ~/dotfiles/config/i3/ -r
cp ~/.config/kitty/* ~/dotfiles/config/kitty/ -r
cp ~/.config/ghostty/* ~/dotfiles/config/ghostty/ -r
cp ~/.config/fish/* ~/dotfiles/config/fish/ -r 
cp ~/.config/rofi/* ~/dotfiles/config/rofi/ -r 
cp ~/.config/picom/* ~/dotfiles/config/picom/ -r
cp ~/.config/nvim/* ~/dotfiles/config/nvim/ -r
cp ~/.config/polybar/* ~/dotfiles/config/polybar/ -r 
cp ~/.config/btop/* ~/dotfiles/config/btop/ -r

read -p "do you want to synchronize wallpapers? [y|n] " ans
if [ $ans = "y" ]; then
    cp ~/Pictures/wallpaper/* ~/dotfiles/wallpapers/ -r
    echo "wallpapers is copied"
fi

echo "synchronization finished"
