#!/bin/bash

apt-add-repository ppa:ansible/ansible
add-apt-repository ppa:neovim-ppa/stable

apt update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

[ -z $(which ansible) ] && apt install ansible

exit 0
