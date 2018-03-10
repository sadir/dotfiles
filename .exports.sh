#! /bin/bash

export CODEROOT=$HOME/code
export EDITOR=vim
export ASDFROOT=$HOME/.asdf
export ASDFINSTALLS=$HOME/.asdf/installs
export GOPATH=$HOME/code/go
GOV=$(asdf current golang | sed  's/ (set by .*)//g')
export GOROOT=$ASDFINSTALLS/golang/$GOV/go/
export NODEV=$(asdf current nodejs | sed  's/ (set by .*)//g')
export NODEROOT=$ASDFINSTALLS/nodejs/$NODEV
export PGHOST=localhost
export PGPORT=5432
export PGPASSWORD=
export PGUSER=$USER
export DOCKER_PGUSER=
export DOCKER_PGPASS=
export http_proxy=
export RUSTPATH=$HOME/.cargo/bin
export DOTFILES=$HOME/.dotfiles/
export MIX_QUIET=1
