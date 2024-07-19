import subprocess
#import inquirer
import os
from enum import Enum
from pathlib import Path

Purple = '\033[0;35m'
NC = '\033[0m'

class PackageAction(Enum):
    install=" -S "
    remove=" -Rcns "

def is_pckg_installed(package_name) -> bool:
    result = subprocess.run("yay -Qi " + package_name, shell=True, capture_output=True, text=True)
    return not result.returncode

def is_pckg_update_or_install_needed(package_name) -> bool:
    if not is_pckg_installed(package_name): return True

    result = subprocess.run("yay -Qu " + package_name, shell=True, capture_output=True, text=True)
    return not result.returncode

def perform_required_pckg_action(action : PackageAction, names : [str]):
    for name in names:
        command= "yay" + str(action.value) + name
        subprocess.run(command, shell=True)
            

def create_sym_links(symlink_files : [str]):
    for slf in symlink_files:
        print("Symlinking " + Purple + slf + NC + " file")

        system_file_path = Path(os.path.expanduser('~/' + slf))
        dotfiles_file_path = Path(os.path.expanduser('~/dotfiles/' + slf))

        assert dotfiles_file_path.is_file() or dotfiles_file_path.is_dir(), "Trying to symlink an invalid dotfiles file/folder!"

        if system_file_path.is_file():
            print("Hey")
            os.remove(system_file_path)
        else:
            path_parent_folder = system_file_path.parent
            if not path_parent_folder.is_dir(): os.mkdir(path_parent_folder)
        
        os.symlink(dotfiles_file_path, system_file_path)


def main():
    create_sym_links([  ".config/kitty/kitty.conf",
                        ".config/neofetch/config.conf",
                        ".config/polybar/config.ini",
                        ".config/rofi/config.rasi",
                        ".config/waypaper/config.ini",
                        ".config/picom.conf",
                        ".config/i3/config",
                        ".gitconfig", 
                        ".profile",
                        ".zshrc",
                        ".p10k.zsh"
                    ])

    #TODO: Install picom, kitty, ulauncher, zsh, zsh-theme10k, Meslo NGfont for 10k theme

    #perform_optional_pckg_actions(PackageAction.install, ["fsearch", "obsidian", "discord", "hotspot"])
    #perform_optional_pckg_actions(PackageAction.remove, ["palemoon, volumeicon"])


if __name__ == "__main__":
    main()
