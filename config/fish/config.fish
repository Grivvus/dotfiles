if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH "/home/grivvus/.local/include/" $PATH
set -x PATH "/home/grivvus/go/bin" $PATH

alias vim='nvim'
alias barevim='set --local --export NVIM_APPNAME nvim-bare && nvim'

alias pac='sudo pacman -Syu'
alias pacclean='sudo pacman -Sc'
alias sus='systemctl suspend'
alias scc='gcc -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g'
alias mypy='uv tool run mypy'
alias vscode='flatpak run com.visualstudio.code'

alias cd='z'

alias darkmode="gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
alias lightmode="gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'"

# openvpn connection management
alias vpnon='nmcli connection up client'
alias vpnoff='nmcli connection down client'
# repair wifi
#usb_modeswitch -v 0bda -p 1a2b -J

# Created by `pipx` on 2024-05-26 16:17:40
set PATH $PATH /home/grivvus/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
# zoxide
zoxide init fish | source

# быстрые команды для управления zapret
alias zapret-config='$HOME/zapret-configs/install.sh'
alias zapret-utils='$HOME/zapret-configs/utils-zapret.sh'
