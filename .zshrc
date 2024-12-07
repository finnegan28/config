export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(  
  gitfast
  git-auto-fetch
  zsh-autosuggestions
  golang
  vscode
  alias-finder
  zsh-syntax-highlighting
  you-should-use
  )

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

