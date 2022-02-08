.PHONY: get-ubuntu-ip
get-ubuntu-ip:
	docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ansible_ubuntu_1
