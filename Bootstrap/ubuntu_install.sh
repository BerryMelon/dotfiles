#!/bin/bash

echo "Berrymelon's bootstrap setups now starting"


sudo apt-get update
sudo apt-get upgrade

echo "installing packages..."
sudo apt-get install ${PACKAGES[@]} -y
sudo apt-get install git -y
sudo apt-get install python -y
sudo apt-get install python3 -y
sudo apt-get install tmux -y
sudo apt-get install zsh -y
sudo apt-get install zsh-completions -y
sudo apt-get install figlet -y
sudo apt-get install pyenv -y
sudo apt-get install pyenv-virtualenv -y
sudo apt-get install cmake -y
sudo apt-get install ctags -y

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:keithw/mosh
sudo apt-get install mosh -y

echo "Installing and setting up pyenv"
pyenv install 2.7.10
pyenv install 3.7.0
pyenv global 3.7.0

source vimzsh.sh

figlet Welcome Doheny.
