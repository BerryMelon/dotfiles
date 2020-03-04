#!/bin/bash

echo "Berrymelon's bootstrap setups now starting"

sudo apt-get update
sudo apt-get upgrade

echo "installing packages..."
sudo apt-get install git -y
sudo apt-get install python3 -y
sudo apt-get install tmux -y
sudo apt-get install zsh -y
sudo apt-get install zsh-completions -y
sudo apt-get install figlet -y
sudo apt-get install cmake -y
sudo apt-get install ctags -y

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:keithw/mosh
sudo apt-get install mosh -y

sudo apt-get dist-upgrade -y
sudo apt-get install openssl -y

source vimzsh.sh

git config --global alias.tree "log --graph --decorate --pretty=oneline --abbrev-commit"

figlet Welcome Doheny.
