# Testing
before test connection connect manually via ssh. Then write `yes`

```
make connect-to-ubuntu
```

# Installation
```bash
sh -c "$(wget https://raw.githubusercontent.com/Andmedoctopus/dotfiles/ansible-dev/install.sh -O -)"
```

# Launch
```bash
ansible-playbook -i hosts setup_dev_env.yaml --extra-vars "ansible_sudo_pass=test"
```
