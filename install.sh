#!/bin/bash
# make sure we have vundle
git submodule update --init
# link everything up
for i in .zshrc .gitconfig .tmux.conf  .vim  .vimrc 
do
    if [ -e $HOME/$i ]
	    then cp -Rf $HOME/$i $HOME/$i.bak;
    fi
    rm -rf $HOME/$i;
    ln -s $PWD/$i $HOME/$i;
done;
# install vundles
vim +BundleInstall +qall
