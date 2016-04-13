if [[ -d "$HOME/anaconda3" ]]; then
    export PATH="$HOME/anaconda3/bin:$PATH"
fi

# Caching for makepkg compiling
if [[ -d "/usr/lib/ccache/bin" ]]; then
    export PATH="/usr/lib/ccache/bin:$PATH"
fi

# Use parallel downloading
# export PACMAN=powerpill

export TERMINAL=urxvt
export EDITOR=nano

