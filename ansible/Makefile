.PHONY: connect-to-ubuntu
connect-to-ubuntu:
	ssh test@localhost -p 5522

.PHONY: install
install:
	ansible-playbook setup_dev_env.yaml --ask-become-pass
