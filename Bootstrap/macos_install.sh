#!/bin/bash

echo "Berrymelon's bootstrap setups now starting"

# Check for Homebrew, install if we don't have it
if ! command -v brew >/dev/null 2>&1; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install gnu-sed 
brew install gnu-tar 
brew install gnu-indent
brew install gnu-which
brew install gnu-grep

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

PACKAGES=(
    autoconf
    git
    gh
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
    llvm
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

figlet Welcome Doheny.
