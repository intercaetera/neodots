export PATH=$HOME/bin:/usr/local/bin:$PATH

# colours
(cat ~/.cache/wal/sequences &)

# zsh settings
ZSH=~/.oh-my-zsh
ZSH_THEME="lambda-mod"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
EDITOR='nvim'

# aliases
alias vi=nvim
alias lsd='ls -l | lolcat' # yes

alias czsh='nvim ~/.zshrc'
alias cbs='nvim ~/.yadm/bootstrap'
alias ctrm='nvim ~/.config/termite/config'
alias cal='nvim ~/.config/alacritty/alacritty.yml'
alias cvrc='nvim ~/.config/nvim/init.vim'
alias ci3='nvim ~/.config/i3/config'
alias cpb='nvim ~/.config/wpg/templates/polybar.base'
alias ccoc='nvim ~/.config/nvim/coc-settings.json'

alias tls='cd ~/dev/tls'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

source ~/.bashrc
source $ZSH/oh-my-zsh.sh
source ~/.bashrc

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
