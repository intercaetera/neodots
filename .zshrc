export PATH=$HOME/bin:/usr/local/bin:$PATH

# colours
(cat ~/.config/wpg/sequences &)

# zsh settings
ZSH=~/.oh-my-zsh
ZSH_THEME="lambda-mod"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
EDITOR='nvim'

# aliases
alias vi=nvim
alias lsd='ls -l | lolcat' # yes

alias czsh='nvim ~/.zshrc'
alias cbs='nvim ~/.yadm/bootstrap'
alias ctrm='nvim ~/.config/termite/config'
alias cvrc='nvim ~/.config/nvim/init.vim'
alias ci3='nvim ~/.config/i3/config'
alias cpb='nvim ~/.config/wpg/templates/polybar.base'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
