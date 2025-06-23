# MUST DO STEPS
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install vim-gtk3 -y # vim with clipboard
sudo apt-get install bash
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# neo-vim
rm nvim-linux-x86_64.tar.gz # remove if exists
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
