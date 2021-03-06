#!/bin/bash

# vim
if [ -f $HOME/.vimrc ]; then
	mv $HOME/.vimrc $HOME/.vimrc.backup
fi

cp ./my.vimrc $HOME/.vimrc

if [ ! -d $HOME/.vim/swap ]; then
  mkdir -p $HOME/.vim/swap;
fi

if [ ! -d $HOME/.vim/backup ]; then
  mkdir -p $HOME/.vim/backup;
fi

# bash
if [ -f $HOME/.bash_aliases ]; then
    mv $HOME/.bash_aliases $HOME/.bash_aliases.backup
fi

cp ./my.bash_aliases $HOME/.bash_aliases

if [ -f $HOME/.bash_profile ]; then
    mv $HOME/.bash_profile $HOME/.bash_profile.backup
fi

cp ./my.bash_profile $HOME/.bash_profile

if [ -f $HOME/.bashrc ]; then
    mv $HOME/.bashrc $HOME/.bashrc.backup
fi

cp ./my.bashrc $HOME/.bashrc

git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/vendor/start/lightline
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

source ~/.bashrc

exit 0
