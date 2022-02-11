.PHONY: install
install:
	ansible-playbook setup_dev_env.yaml --ask-become-pass
