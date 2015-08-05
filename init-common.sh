#!/bin/bash

backup_and_link () {
    if [ `readlink -f $1` == $PWD/$2 ] ; then
        return 0;
    fi
    if [ $# -ne 2 ] ; then
        echo "Must call backup_and_link with two args; args provided: " $@
        return 1;
    fi
    local mv_backup="mv --backup=number --suffix=\"\""
    if [ -e $1 ] ; then
        $mv_backup $1 $1.bak 2>/dev/null
    fi
    ln -s $PWD/$2 $1
}

backup_and_link $HOME/.bash_aliases bash_aliases
backup_and_link $HOME/.vimrc vimrc

mkdir -p $HOME/bin
ln -s $PWD/bin/* $HOME/bin
if [ ! -d rainbowfy ] ; then
    git clone https://github.com/fspieler/rainbowfy.git
fi

mkdir -p ~/.vim/colors
backup_and_link ~/.vim/colors/solarized.vim solarized.vim

backup_and_link $HOME/bin/rainbowfy rainbowfy/rainbowfy

