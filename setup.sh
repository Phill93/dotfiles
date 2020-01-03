#!/bin/bash

BASEDIR=$(dirname "$0")

sudo pacman -S zsh vim curl
pikaur -S oh-my-zsh-git

ln -fs $BASEDIR/zshrc ~/.zshrc
ln -fs $BASEDIR/aliases ~/.aliases
ln -fs $BASEDIR/functions ~/.functions
ln -fs $BASEDIR/gitignore ~/.gitignore
mkdir -p ~/.gnupg
ln -fs $BASEDIR/gpg.conf ~/.gnupg/gpg.conf
curl -sSL https://phill93.de/gpg.pub.asc | gpg --import -
