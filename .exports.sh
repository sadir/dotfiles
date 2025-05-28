#! /bin/bash

export CODEROOT=$HOME/code
export DOTFILES=$HOME/.dotfiles/
export EDITOR=vim
export ASDFINSTALLS=$HOME/.asdf/installs
export ASDFROOT=$HOME/.asdf
export ERL_AFLAGS="-kernel shell_history enabled"
export NODEV=$(asdf current nodejs | sed  's/nodejs          \(.*\)         .*/\1/g')
export NODEROOT=$ASDFINSTALLS/nodejs/$NODEV
export XDG_CONFIG_HOME=$DOTFILES
export BASH_SILENCE_DEPRECATION_WARNING=1
export PYENV_ROOT="$HOME/.pyenv"
