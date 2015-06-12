#!/bin/bash

cp .vimrc .bashrc .dircolors ~/
cp -R .vim ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
