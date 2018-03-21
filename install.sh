#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

cd ~/Code/

git clone https://github.com/nomad145/snippets

mkdir ~/.config

ln -s ~/Code/dotfiles/.config/nvim ~/.config/nvim

rm ~/.config/nvim/UltiSnips
ln -s ~/Code/snippets ~/.config/nvim/UltiSnips

brew tap homebrew/homebrew-php
brew install iterm2 php71 php71-msgpack python3 neovim

pip3 install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew install php-code-sniffer phpctags phpmd
