if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim='nvim'
alias pac='sudo pacman -Syu'
alias scc='gcc -Wall -Wextra -Wpedantic -Wformat -Wsign-compare -Wtype-limits -g'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/grivvus/miniconda3/bin/conda
    eval /home/grivvus/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/grivvus/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/grivvus/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/grivvus/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


# Created by `pipx` on 2024-05-26 16:17:40
set PATH $PATH /home/grivvus/.local/bin
