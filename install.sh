#!/bin/sh

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible git
STORE_PATH="/home/$USER/.config/.dotfiles"

git clone https://github.com/Andmedoctopus/dotfiles $STORE_PATH
cd $STORE_PATH
# to remove when merge to master
git checkout ansible-dev

make install
