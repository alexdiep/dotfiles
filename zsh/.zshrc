# Path to your oh-my-zsh installation.
# This breaks whenever you change users. Need to fix...
export ZSH=/home/$USER/.oh-my-zsh

ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git
         sudo
         common-aliases
         python
         pylint
         pip)

source $ZSH/oh-my-zsh.sh

# User configuration
# Because npm brings pain and suffering to my life
export PATH=~/.npm-global/bin:$PATH

export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"

export WINEARCH='win32'

#sudo trick
alias sudo="sudo "

# aliases
alias stow="stow --ignore='^.*\.(bak)$'"
alias tree="tree -I .git"
alias updatemirrors="sudo reflector --verbose -c US -p https -f 5 --save /etc/pacman.d/mirrorlist"
alias updatesys="updatemirrors; pacaur -Syu;"
# for some reason zshconfig="$EDITOR ~/.zshrc" doesn't work
alias zshconfig="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
# uses amix/vimrc
alias vimconfig="vim ~/.vim_runtime/my_configs.vim"
# MAXIMUM OVERDRIVE
alias maxspeed="echo 255 | sudo tee /sys/devices/platform/i8042/serio1/serio2/speed | sudo tee /sys/devices/platform/i8042/serio1/serio2/sensitivity"


# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function pdf() { {nohup evince $1 &} &> /dev/null }
