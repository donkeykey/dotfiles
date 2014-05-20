#!/bin/bash

#DOT_FILES=( .zshrc .vimrc .vim .bash_profile)

ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.vim $HOME/.vim
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile

[ ! -d ~/.vim/bundle ] && mkdir -p ~/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim && echo "you should run following command to setup plugins ->  vim -c ':NeoBundleInstall'"
