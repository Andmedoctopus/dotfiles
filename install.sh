#!/bin/sh

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible git
STORE_PATH="/home/$USER/.config/.dotfiles"
SETUP_FILE="ansible/setup_dev_env.yaml"

git clone https://github.com/Andmedoctopus/dotfiles $STORE_PATH
cd $STORE_PATH
# to remove when merge to master
git checkout ansible-dev

read -p "Do you wish to install this program?" yn
case $yn in
    [Yy]* ) ansible-playbook $SETUP_FILE; break;;
    * ) echo Visit $STORE_PATH/$SETUP_FILE to configure; exit;;
esac
