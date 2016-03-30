	
if [[ -d  "$HOME/go" ]]; then
	export GOPATH="$HOME/go"
	export PATH="$GOPATH:$GOPATH/bin:$PATH"
fi

if [[ -d "$HOME/anaconda3" ]]; then
	export PATH="$HOME/anaconda3/bin:$PATH"
fi

export TERMINAL=urxvt
export EDITOR=nano

