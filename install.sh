#!/bin/bash

if [ ! "which vim" ]; then
	echo "vim is not installed. Install vim."
	sudo apt-get update
	sudo apt-get install vim
fi
echo "copy .bashrc .dircolors .vim to home directory."
cp .vimrc .bashrc .dircolors /home/${USER}/
cp -R .vim /home/${USER}/

vundle="/home/${USER}/.vim/bundle/Vundle.vim"
if [[ ! -e "$vundle" ]]; then
	echo "Clone Vundle.vim.git and install all plugins"
	git clone https://github.com/gmarik/Vundle.vim.git $vundle
fi
vim +PluginInstall +qall
echo "Done."
