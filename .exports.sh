#! /bin/bash

GOV=$(asdf current golang | sed  's/ (set by .*)//g')

export ASDFINSTALLS=$HOME/.asdf/installs
export ASDFROOT=$HOME/.asdf
export CODEROOT=$HOME/code
export DOCKER_PGPASS=
export DOCKER_PGUSER=
export DOTFILES=$HOME/.dotfiles/
export EDITOR=vim
export GOPATH=$HOME/code/go
export GOROOT=$ASDFINSTALLS/golang/$GOV/go/
export MIX_QUIET=1
export NODEROOT=$ASDFINSTALLS/nodejs/$NODEV
export NODEV=$(asdf current nodejs | sed  's/ (set by .*)//g')
export PGHOST=localhost
export PGPASSWORD=
export PGPORT=5432
export PGUSER=$USER
export PYTHONPATH=.
export RUSTPATH=$HOME/.cargo/bin
export http_proxy=
