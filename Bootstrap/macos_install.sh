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
brew install neovim

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
    pkg-config
    ruby
    cmake
    ctags
    --with-clang llvm
    neovim
)

echo "installing packages..."
brew install ${PACKAGES[@]}

CASKS=(
    iterm2
)

brew install --cask ${CASKS[@]}

echo "cleaning up..."
brew cleanup

source vimzsh.sh

# setup YCM if we have it
if [ -d "$HOME/.vim/bundle/YouCompleteMe" ]; then
    $HOME/.vim/bundle/YouCompleteMe/install.sh --clang-completer
fi

figlet Welcome Doheny.
