#!/bin/bash

echo "Berrymelon's bootstrap setups now starting"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew tap homebrew/dupes
brew install coreutils
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-which --with-default-names
brew install gnu-grep --with-default-names

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

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
    --with-clang llvm
)

echo "installing packages..."
brew install ${PACKAGES[@]}

echo "cleaning up..."
brew cleanup

# echo "Installing cask..."
# brew install caskroom/cask/brew-cask
# 
# CASKS=(
    # iterm2
    # slack
# )
# 
# echo "Installing cask apps..."
# brew cask install ${CASKS[@]}

# echo "Installing and setting up pyenv"
# pyenv install 2.7.10
# pyenv install 3.7.0
# pyenv global 3.7.0

source vimzsh.sh

figlet Welcome Doheny.
