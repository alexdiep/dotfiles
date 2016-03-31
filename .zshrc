## Most of it is stolen from the Arch Linux wiki

## History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_DUPS


## Autocomplete
autoload -U compinit
compinit

# Arrow key select
zstyle ':completion:*' menu select

# Update completion file often
zstyle ':completion:*' rehash true

# Fuzzy matching of completions
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Ignore commands that aren't there
zstyle ':completion:*:functions' ignored-patterns '_*'

# Process ID matching
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

# Remove trailing slash in dirs
zstyle ':completion:*' squeeze-slashes true

# Ignore parent dictory (../<TAB>)
zstyle ':completion:*:cd:*' ignore-parents parent pwd

setopt completealiases


## Prompts
autoload -U promptinit
promptinit
prompt redhat

## Dir stack
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

# Make the .cache folder
if ! [[ -d "$HOME/.cache/zsh" ]]; then
	mkdir --parents ~/.cache/zsh
fi


DIRSTACKSIZE=20

setopt autopushd pushdsilent pushdtohome

# Remove duplicate entries
setopt pushdignoredups

# This reverts the +/- operators.
setopt pushdminus↑

## Help command
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
alias help=run-help


## Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


## Aiiases
alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias po=popd
alias pu=pushd

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias md='mkdir -p'

alias ls='ls --color=auto'
alias l='ls -lFh'
alias lS='ls -1FSsh'
alias la='ls -lAFh'
alias lart='ls -1Fcart'
alias ldot='ls -ld .*'
alias ll='ls -l'
alias lr='ls -tRFh'
alias lrt='ls -1Fcrt'
alias ls='ls --color=tty'
alias lsa='ls -lah'
alias lt='ls -ltFh'

# Etc aliases
alias tree='tree -C --dirsfirst'
alias xclip='xclip -selection clip-board'
alias zshrc='$EDITOR ~/.zshrc'
alias st='subl3'
alias pm='pacaur'
alias sudo='sudo '
