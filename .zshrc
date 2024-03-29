if [ -d "/opt/homebrew/bin" ] && [[ ":$PATH:" != *":/opt/homebrew/bin:"* ]]; then
        PATH="/opt/homebrew/bin${PATH:+":$PATH"}"
fi

if [ -d "/opt/homebrew/sbin" ] && [[ ":$PATH:" != *":/opt/homebrew/sbin:"* ]]; then
        PATH="/opt/homebrew/sbin${PATH:+":$PATH"}"
fi


if [ -f /usr/local/share/antigen/antigen.zsh ]; then
  source /usr/local/share/antigen/antigen.zsh
elif [ -f /opt/homebrew/share/antigen/antigen.zsh ]; then
  source /opt/homebrew/share/antigen/antigen.zsh
else
  echo "Antigen not found"
  exit 1
fi

antigen use oh-my-zsh

antigen bundle git
antigen bundle sudo
antigen bundle vim
antigen bundle pass
antigen bundle git-extras
antigen bundle gpg-agent
antigen bundle kubectl
antigen bundle vagrant
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
antigen apply

if [ ! -d ~/bin ]; then
  mkdir -p ~/bin
fi

export PATH="$PATH:$HOME/bin"

if [ -d ~/Library/Python/3.8/bin ]; then 
  export PATH="$PATH:$HOME/Library/Python/3.8/bin"
fi

if [ ! -f ~/bin/iterm2_integration.zsh ]; then
  curl -L https://iterm2.com/shell_integration/zsh -o ~/bin/iterm2_integration.zsh
fi

source ~/bin/iterm2_integration.zsh

export UPDATE_ZSH_DAYS=14
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"

source ~/.functions
source ~/.aliases

if [ ! -d ~/.sdk ]; then
	mkdir -p ~/.sdk
fi

if [ ! -f ~/.sdk/export ]; then
	touch ~/.sdk/export
fi

# added by travis gem
[ -f /Users/rt1330/.travis/travis.sh ] && source /Users/rt1330/.travis/travis.sh
export XDG_CONFIG_HOME=$HOME/.config
