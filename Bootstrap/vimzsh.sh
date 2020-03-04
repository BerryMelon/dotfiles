echo "Installing oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir ~/tmp
cd ~/tmp

echo "Installing powerline fonts"
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

cd ~

echo "Setting up dotfiles.."

cd dotfiles

echo "creating backups for current vimrc, zshrc, oh-my-zsh"
mv ~/.vimrc ~/.vimrc_backup
mv ~/.zshrc ~/.zshrc_backup
mv ~/.oh-my-zsh ~/.oh-my-zsh_backup

ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/oh-my-zsh ~/.oh-my-zsh

mkdir ~/.zshrc_local

echo "creating backups for current tmux"
mv ~/.tmux.conf ~/.tmux.conf_backup
mv ~/.tmux.conf.local ~/.tmux.conf.local_backup
mv ~/.tmux.conf.theme ~/.tmux.conf.theme_backup

ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmux/tmux.conf.local ~/.tmux.conf.local
ln -s ~/dotfiles/tmux/tmux.conf.theme ~/.tmux.conf.theme

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Vim plugins"
vim +PluginInstall +qall

zsh

tmux new -s main
