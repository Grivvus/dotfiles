flatpak install org.mozilla.firefox
flatpak install org.telegram.desktop
flatpak install com.discordapp.Discord 
flatpak install io.dbeaver.DBeaverCommunity
flatpak install org.libreoffice.LibreOffice
flatpak install org.godotengine.Godot
flatpak install org.blender.Blender
flatpak install com.github.tchx84.Flatseal

read -p "do you want to install Brave browser? [y|n] " ans
if [ $ans = "y" ]; then
    flatpak install com.brave.Browser
fi

read -p "do you want to install anydesk? [y|n] " ans
if [ $ans = "y" ]; then
    flatpak install com.anydesk.Anydesk
fi
