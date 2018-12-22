#!/bin/bash

echo "Berrymelon's bootstrap setups now starting"


sudo apt-get update
sudo apt-get upgrade

echo "installing packages..."
sudo apt-get install git -y
sudo apt-get install python -y
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
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus -y
sudo apt-get install libncursesw5-dev libgdbm-dev libc6-dev -y
sudo apt-get install zlib1g-dev libsqlite3-dev tk-dev -y
sudo apt-get install libssl-dev openssl -y
sudo apt-get install libffi-dev -y
sudo apt-get install make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev
sudo pip install virtualenvwrapper

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'pyenv virtualenvwrapper' >> ~/.zshrc

echo "Installing and setting up pyenv"
pyenv install 2.7.10
pyenv install 3.7.0
pyenv global 3.7.0

source vimzsh.sh

git config --global alias.tree "log --graph --decorate --pretty=oneline --abbrev-commit"

figlet Welcome Doheny.
