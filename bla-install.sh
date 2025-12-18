#!/bin/sh

echo "Installing dotfiles and more"
sudo apt update
sudo apt upgrade

echo "Installing zsh"
apt install zsh

touch ~/.profile
echo "export SHELL=`which zsh`" >> ~/.profile
echo "`[ -z "$ZSH_VERSION" ] && exec \"$SHELL\" -l" >> ~/.profile
