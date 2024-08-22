import os
from pathlib import Path

Purple = '\033[0;35m'
NC = '\033[0m'

#########################################################################

def create_sym_links(symlink_files : [str]):
    for slf in symlink_files:
        print("Symlinking " + Purple + slf + NC + " file")

        system_file_path = Path(os.path.expanduser('~/' + slf))
        dotfiles_file_path = Path(os.path.expanduser('~/.dotfiles/' + slf))

        assert dotfiles_file_path.is_file() or dotfiles_file_path.is_dir(), "Trying to symlink an invalid dotfiles file/folder!"

        if system_file_path.is_file():
            os.remove(system_file_path)
        else:
            path_parent_folder = system_file_path.parent
            if not path_parent_folder.is_dir(): os.mkdir(path_parent_folder)

        os.symlink(dotfiles_file_path, system_file_path)

#########################################################################

def perform_sym_links():
    print(Purple + "\n=== Symlinking files ===" + NC)
    create_sym_links([  ".config/kitty/kitty.conf",
                        ".config/neofetch/config.conf",
                        ".config/polybar/config.ini",
                        ".config/waypaper/config.ini",
                        ".config/picom.conf",
                        ".config/ulauncher/extensions.json",
                        ".config/ulauncher/settings.json",
                        ".config/ulauncher/shortcuts.json",
                        ".config/Code/User/settings.json",
                        ".config/Code/User/keybindings.json",
                        ".config/spicetify/config-xpui.ini",
                        ".config/i3/config",
                        ".gitconfig", 
                        ".profile",
                        ".zshrc",
                        ".p10k.zsh",
                        ".tmux.conf",
                    ])

