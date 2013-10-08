#!/bin/bash

cd ~

# create the link for the .vimrc file
rm .vimrc
ln -s ~/.my-config/vim_config/.vimrc .vimrc

# create the link for the .vim folder
rm -R .vim
ln -s ~/.my-config/vim_config/.vim .vim
