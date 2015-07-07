#!/bin/bash


# install .vimrc symlink
if [[ -f ~/.vimrc ]]; then
	cp ~/.vimrc ~/.vimrc.old
	rm -f ~/.vimrc
fi
ln -s ~/.vim/.vimrc ~/.vimrc


# install commands required for vim-go
vim -c 'GoInstallBinaries'
