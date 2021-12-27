#!/bin/bash

if command -v apt-get >/dev/null; then
  echo "apt-get is used here"
  pm="apt-get"
elif command -v yum >/dev/null; then
  echo "yum is used here"
  pm="yum"
else
  echo "No recognizable pakage found. abort"
  exit 0
fi

echo "Berrymelon's bootstrap setups now starting"

sudo $pm update
sudo $pm upgrade

echo "installing packages..."
sudo $pm install git -y
sudo $pm install python3 -y
sudo $pm install tmux -y
sudo $pm install zsh -y
sudo $pm install zsh-completions -y
sudo $pm install figlet -y
sudo $pm install cmake -y
sudo $pm install ctags -y
sudo $pm install python3-pip -y
sudo $pm install python3-venv -y

sudo $pm install python-software-properties
sudo $pm install mosh -y

sudo $pm dist-upgrade -y
sudo $pm install openssl -y
suto $pm install openssh-server -y
update-rc.d -f ssh remove
update-rc.d -f ssh defaults

pip3 install --upgrade pip
pip3 install jupyter
python ./upgrade_all_pip.py

source vimzsh.sh

git config --global alias.tree "log --graph --decorate --pretty=oneline --abbrev-commit"

figlet Welcome Doheny.
