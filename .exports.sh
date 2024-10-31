#! /bin/bash

export CODEROOT=$HOME/code
export DOTFILES=$HOME/.dotfiles/
export EDITOR=vim
export ERL_AFLAGS="-kernel shell_history enabled"
export NODEV=$(asdf current nodejs | sed  's/nodejs          \(.*\)          .*/\1/g')
export NODEROOT=$ASDFINSTALLS/nodejs/$NODEV
