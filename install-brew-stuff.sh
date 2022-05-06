#!/bin/bash

set -e
[ -z $(which brew) ] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/cask-fonts

[ -z $(which ansible) ] && brew install ansible

exit 0
