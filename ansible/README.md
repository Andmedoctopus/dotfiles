# Testing
before test connection connect manually via ssh. Then write `yes`

```
make connect-to-ubuntu
```

# Installation
```bash
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible git
```

# Launch
```bash
ansible-playbook -i hosts setup_dev_env.yaml --extra-vars "ansible_sudo_pass=test"
```
