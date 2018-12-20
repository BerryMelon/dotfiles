#!/bin/bash

echo "Berrymelon's bootstrap setups now starting"


sudo apt-get update
sudo apt-get upgrade

PACKAGES=(
    autoconf
    git
    markdown
    openssl
    readline
    sqlite3
    xz
    zlib
    npm
    python
    python3
    ssh-copy-id
    vim
    tmux
    wget
    zsh
    zsh-completions
    figlet
    node
    pyenv
    pyenv-virtualenv
    pkg-config
    ruby
    cmake
    ctags
    mosh
    --with-clang llvm
)

echo "installing packages..."
sudo apt-get install ${PACKAGES[@]} -y

echo "Installing and setting up pyenv"
pyenv install 2.7.10
pyenv install 3.7.0
pyenv global 3.7.0

source vimzsh.sh

figlet Welcome Doheny.
