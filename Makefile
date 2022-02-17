.PHONY: install
install:
	ansible-playbook setup_dev_env.yaml --ask-become-pass

.PHONY: check-syntax
check-syntax:
	ansible-playbook setup_dev_env.yaml --syntax-check

.PHONY: install-ansible
install-ansible:
	sudo add-apt-repository --yes --update ppa:ansible/ansible
	sudo apt-get install -y ansible git make
