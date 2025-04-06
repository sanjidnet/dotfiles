# VIM BINDING
set -o vi
bind '"jk":vi-movement-mode'
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# TMUX
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'
# Creates a new session
alias tn='tmux new-session'
# Lists all ongoing sessions
alias tl='tmux list-sessions'

# SOURCING CONFIG FILES
alias source-tmux='tmux source-file ~/.tmux.conf'
alias source-bash='source ~/.bashrc'

# RUBY SETTINGS 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# TERRAFORM SETTINGS
complete -C /usr/bin/terraform terraform

# R SETTINGS
function knit { Rscript -e "rmarkdown::render('$1')"; }
export -f knit
complete -f -X '!*.Rmd' knit

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
