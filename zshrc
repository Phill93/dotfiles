source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle sudo
antigen bundle vim
antigen bundle kubectl

antigen theme cloud
antigen apply

if [ ! -d ~/bin ]; then
  mkdir -p ~/bin
fi

export PATH="$PATH:$HOME/bin"

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
