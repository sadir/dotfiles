#!/bin/bash

brew update
brew upgrade

brew install awscli
brew install coreutils
brew install cmake
brew install git
brew install hub
brew install moreutil
brew install postgresql
brew install ripgrep
brew install tree
brew install the_silver_searcher
brew install vim --with-override-system-vi
brew install diff-so-fancy
brew install ctags
brew install getsentry/tools/sentry-cli

brew cleanup
