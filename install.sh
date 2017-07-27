#!/bin/bash

apt_install() {
    echo "Install $1"
    if [ $(dpkg-query -W -f='${Status}' $1 2>/dev/null | grep -c "install ok installed") -eq 0 ]; then
	echo "$1 is not installed. Install $1."
	sudo apt-get update
	sudo apt-get install $1 -y
    fi
}

copy_dot_files() {
    echo "copy .bashrc .dircolors .vim to home directory."
    cp .vimrc .bashrc .dircolors /home/${USER}/
    cp -R .vim /home/${USER}/
    sudo cp jellybeans.vim /usr/share/vim/vim74/colors
}

vim_plugin_install() {
    vundle="/home/${USER}/.vim/bundle/Vundle.vim"
    if [[ ! -e "$vundle" ]]; then
        echo "Clone Vundle.vim.git and install all plugins"
        git clone https://github.com/gmarik/Vundle.vim.git $vundle
    fi
    vim +PluginInstall +qall
}

command_t_compile() {
    cd /home/${USER}/.vim/bundle/command-t/ruby/command-t/ext/command-t
    ruby extconf.rb
    make
}

echo "Start."

apt_install 'vim-nox'
apt_install 'flake8'
apt_install 'python-autopep8'
apt_install 'ruby-dev'
copy_dot_files
vim_plugin_install
command_t_compile

echo "Done."
