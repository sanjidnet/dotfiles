man(){ $1 --help; }

# VIM Binding in the shell  
set -o vi  
# Remap 'jk' to escape key, i.e. normal mode
bind '"jk":"\e"'

alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no

# Do you even tmux, bro?
if tmux -V; then 
	echo ""
else echo "For tmux on Windows: https://blog.pjsen.eu/?p=440"
fi

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
