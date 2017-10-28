#!/bin/bash

export GOPATH=$HOME/code/go
GOV=$(asdf current golang | sed  's/ (set by .*)//g')
export GOROOT=$HOME/.asdf/installs/golang/$GOV/go/
