# System setuper

This is my system setuper. It up dev env with ansible

# Installation
```bash
sh -c "$(wget https://raw.githubusercontent.com/Andmedoctopus/dotfiles/master/install.sh -O -)"
```

# Launch if you have repository
```bash
make install
```

## Setting up

You can setting up components in `setup_dev_env.yaml`. Put `yes` or `no `in relevant paragraphs

```yaml
    install_omz: yes
    install_spacemacs: yes
    install_docker: yes
    install_i3: no
    install_work_tools: yes
    install_other_tools: yes
```
