if status is-interactive
    # Commands to run in interactive sessions can go here
end

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

