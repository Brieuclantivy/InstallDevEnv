#!/bin/sh

sudo dnf -y upgrade
sudo dnf -y update
sudo dnf -y install git
sudo dnf -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo dnf -y install emacs

#install vscode
sudo dnf -y install code

#install i3
sudo dnf -y install i3 i3status dmenu i3lock xbacklight feh conky

##
## configure zsh
##
cd /tmp
git clone https://github.com/Brieuclantivy/dotfiles
cp .zshrc ~/
cp .zsh_history ~/
source ~/.zshrc

##
## configure emacs
##
cp .emacs ~/

##
## configure i3
##
cp i3/config ~/.config/i3/
cp -rf polybar/* ~/.config/polybar/


##
## ssh config
##

#zsh custom plugins
#zsh-autosuggestions  zsh-history-substring-search