#!/bin/sh

# make directories
mkdir -p $HOME/usr/go $HOME/usr/bin
mkdir -p $HOME/Workspace/go
mkdir -p $HOME/.config
mkdir -p $HOME/.nodebrew/src

# set up dotfiles
git clone https://github.com/RomTin/dotfiles.git $HOME/Workspace/dotfiles
ln -s $HOME/Workspace/dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/Workspace/dotfiles/zshrc $HOME/.zshrc

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install rcmdnk/file/brew-file

# change login shell
chsh -s /bin/zsh && exec /bin/zsh
