# oh-my-zsh default config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="strug"
# 2 other good themes [rgm, refined]

# oh-my-zsh plugings
plugins=(
  git
  zsh-aws-vault
)
source $ZSH/oh-my-zsh.sh

# VIM BINDING 
bindkey -v 
bindkey 'jk' vi-cmd-mode # use `jk` to exit out of insert mode

# enable reverse-i-search
# which gets disabled with zsh
bindkey '^r' history-incremental-search-backward

# alias to manage dot files with git
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


function knit { Rscript -e "rmarkdown::render('$1')"; }
complete -f -X '!*.Rmd' knit
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
