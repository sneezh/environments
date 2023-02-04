#!/bin/bash

apt-add-repository ppa:ansible/ansible && apt update

[ -z $(which ansible) ] && apt install ansible

exit 0
