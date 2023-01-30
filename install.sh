#!/bin/sh

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install -y ansible git make
STORE_PATH="/home/$USER/.config/.dotfiles"

git clone https://github.com/Andmedoctopus/dotfiles $STORE_PATH
cd $STORE_PATH

while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

