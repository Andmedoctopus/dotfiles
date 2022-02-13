.PHONY: install
install:
	ansible-playbook setup_dev_env.yaml --ask-become-pass

.PHONY: check-syntax
check-syntax:
	ansible-playbook setup_dev_env.yaml --syntax-check
