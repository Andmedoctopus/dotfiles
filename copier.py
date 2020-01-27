#!/usr/bin/env python3

import os
import sys
import shutil


from pathlib import Path

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

__all__ = {
        'NVIM_DEFAULT_CONFIG_FILE_PATH' : '~/.config/nvim/init.vim',
        'ZSH_DEFAULT_CONFIG_FILE_PATH'  : '~/.zshrc',
        'TMUX_DEFAULT_CONFIG_FILE_PATH' : '~/.tmux.conf.local',
        }

def file_need_to_update(path):
    config_file = Path(path).expanduser()
    in_dir_file = Path(BASE_DIR) / config_file.name
    return not in_dir_file.exists() or config_file.stat().st_mtime > in_dir_file.stat().st_mtime



def update_config_file(path):
    if file_need_to_update(path):
        filename = Path(path).expanduser().name
        in_dir_file = Path(BASE_DIR) / filename
        if in_dir_file.exists():
            in_dir_file.rename(in_dir_file.name + '.old')
        try:
            shutil.copy(Path(path).expanduser(), in_dir_file.name)
        except IOError as e:
            print("Unable to copy file. {}".format(e))
        except:
            print("Unexpected error:", sys.exc_info())


if __name__ == '__main__':
    for path in __all__.values():
        update_config_file(path)

