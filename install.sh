#!/bin/bash
for i in .zshrc .gitconfig .tmux.conf  .vim  .vimrc 
do
    if [ -e $HOME/$i ]
	    then cp -Rf $HOME/$i $HOME/$i.bak;
    fi
    rm -rf $HOME/$i;
    ln -s $PWD/$i $HOME/$i;
done;
