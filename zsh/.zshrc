# Path to your oh-my-zsh installation.
# This breaks whenever you change users. Need to fix...
  export ZSH=/home/alex/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git
         sudo
         common-aliases
         python
         pyenv
         pylint
         pip
         virtualenvwrapper
         web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8
export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"

# aliases
alias stow="stow --ignore='^.*\.(bak)$'"
alias tree="tree -I .git"
alias updatemirrors="reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
# for some reason zshconfig="$EDITOR ~/.zshrc" doesn't work
alias zshconfig="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
# uses amix/vimrc
alias vimconfig="vim ~/.vim_runtime/my_configs.vim"

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function pdf() { {nohup evince $1 &} &> /dev/null }
