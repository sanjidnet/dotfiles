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

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE

# HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.
# END HISTORY
