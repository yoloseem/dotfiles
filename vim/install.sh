#!/bin/sh
#
# Vim
#
# This installs NeoBundle and other stuffs.
if [ -f ~/.vim/bundle/neobundle.vim ]; then
    source `pwd`/vim/neobundle.sh
fi
