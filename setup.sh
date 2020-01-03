#!/bin/bash

BASEDIR=$(dirname "$0")

sudo pacman -S zsh vim curl
pikaur -S oh-my-zsh-git

ln -s $BASEDIR/zshrc ~/.zshrc
ln -s $BASEDIR/aliases ~/.aliases
ln -s $BASEDIR/functions ~/.functions
ln -s $BASEDIR/gitignore ~/.gitignore
mkidr -p ~/.gnupg
ln -s $BASEDIR/gpg.conf ~/.gnupg/gpg.conf
curl -sSL https://phill93.de/gpg.pub.asc | gpg --import -
