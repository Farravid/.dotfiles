import subprocess
import inquirer
from enum import Enum

import common

#########################################################################
#########################################################################

class PackageAction(Enum):
    clone_git       = " git clone "
    install_code    = " code --install-extension "
    install_yay     = " yay -S --noconfirm "
    remove_yay      = " yay -Rcns "

#########################################################################
#########################################################################

def is_pckg_installed(package_name) -> bool:
    result = subprocess.run("yay -Qi " + package_name, shell=True, capture_output=True, text=True)
    return not result.returncode

#########################################################################

def is_pckg_update_or_install_needed(package_name) -> bool:
    if not is_pckg_installed(package_name): return True

    result = subprocess.run("yay -Qu " + package_name, shell=True, capture_output=True, text=True)
    return not result.returncode

#########################################################################

def perform_required_pckg_action(action : PackageAction, names : [str]):
    for name in names:
        command= str(action.value) + name
        subprocess.run(command, shell=True)

#########################################################################

def perform_optional_pckg_actions(action : PackageAction, names : [str]):
    for name in names:

        print("\n")
        message = 'Do you want to ' + action.name + ' ' + common.Purple + name + common.NC + ' ?'
        question = [
            inquirer.List(
                "choice", message,["Yes", "No"],
            ),
        ]

        answer = inquirer.prompt(question)

        if answer["choice"] == "Yes":
            if action == PackageAction.remove_yay and not is_pckg_installed(name): continue
            if action == PackageAction.install_yay and not is_pckg_update_or_install_needed(name): continue
            perform_required_pckg_action(action, [name])

#########################################################################

def reload_zsh():
    subprocess.run("source ~/.zshrc", shell=True, capture_output=True, text=True)

#########################################################################

def install_oh_my_zsh():
    print(common.Purple + "== Installing oh my zsh ===" + common.NC)
    #subprocess.run("sh -c \"$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\"", shell=True)
    subprocess.run("git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k", shell=True)
    subprocess.run("git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting", shell=True)
    subprocess.run("git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions", shell=True)

#########################################################################

def uninstall_packages():
    print(common.Purple + "=== Removing not used software from Manjaro i3 😎 ===" + common.NC)
    perform_optional_pckg_actions(PackageAction.remove_yay, ["palemoon", "volumeicon"])

#########################################################################

def install_packages():
    print(common.Purple + "=== Installing necessary software for this dotfiles ===" + common.NC)
    perform_optional_pckg_actions(PackageAction.install_yay,
    [   
         "kitty", "ulauncher", "flameshot", "polybar",
         "neofetch", "blueman", "neovim", "github-cli",
         "git-lfs", "github-desktop", "discord", "obsidian",
         "firefox", "python-pywalfox", "neofetch", "feh", "waypaper",
         "pulseaudio", "spotify", "pavucontrol", "playerctl",
         "python-pywal", "colorz", "visual-studio-code-bin",
         "ttf-font-awesome 6", "ttf-jetbrains-mono-nerd", "ttf-roboto",
         "tmux",
    ])

    print(common.Purple + "=== Installing optional software for this dotfiles ===" + common.NC)
    perform_optional_pckg_actions(PackageAction.install_yay,
    [  
         "fsearch", "hotspot", "appimagelauncher",
         "cli-visualizer", "pipes.sh", "bottom", "obs-studio", "benchmark",                                                     
    ])

    print(common.Purple + "=== Installing useful C++ software for this dotfiles ===" + common.NC)
    perform_optional_pckg_actions(PackageAction.install_yay,
    [  
         "clang", "cmake", "ccache", "gdb",
         "conan",                                                      
    ])

#########################################################################

def install_pywalfox():
    print(common.Purple + "\n=== Installing pywalfox. Remember to download the addon on Firefox ===" + common.NC)
    subprocess.run("sudo -E pywalfox install", shell=True)

#########################################################################

def install_code_extensions():
    perform_optional_pckg_actions(PackageAction.install_code, 
    [
        "ms-vscode.cpptools", "s-nlf-fh.glassit", "tal7aouy.icons",
        "ms-python.vscode-pylance", "ms-python.python", "ms-python.debugpy",
        "tal7aouy.theme", "dlasagno.wal-theme", "naumovs.color-highlight",
        "eamodio.gitlens", "yzhang.markdown-all-in-one",
        "ms-vscode.cmake-tools", "twxs.cmake", "aaron-bond.better-comments",                          
    ])

#########################################################################

def clone_repos():
    print(common.Purple + "\n=== Cloning frequently used GitHub repositories ===" + common.NC)

    github_folder = "~/Documents/GitHub"
    subprocess.run("mkdir " + github_folder, shell=True)

    perform_optional_pckg_actions(PackageAction.clone_git, 
    [
        "--recurse-submodules https://github.com/Farravid/obsidian-vault.git " + github_folder + "/obsidian-vault",
        "https://github.com/Farravid/farra_function " + github_folder + "/farra_function",
        "-b private/farravid https://github.com/dendibakh/perf-ninja.git " + github_folder + "/perf-ninja",                                  
    ])

#########################################################################

def select_random_wallpaper():
    print(common.Purple + "\n=== Select a random wallpaper from dotfiles and applying pywal ===" + common.NC)
    subprocess.run("waypaper --random", shell=True)

#########################################################################

def main():
    print(r"""
    ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
    ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
    ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
    ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
    ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
    ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝                                                                                                                           
    """)
    
    uninstall_packages()
    install_packages()
    install_oh_my_zsh()
    reload_zsh()
    install_pywalfox()
    install_code_extensions()

    common.perform_sym_links()
    
    print(common.Purple + "\n=== Copy ulauncher extensions to .config/ulauncher folder ===" + common.NC)
    subprocess.run("cp -r ~/.dotfiles/.config/ulauncher/ext_preferences ~/.config/ulauncher", shell=True)

    reload_zsh()
    clone_repos()
    select_random_wallpaper()    

if __name__ == "__main__":
    main()

# TODO: Find a solution for extensions of ulauncher
# TODO: GTK Themes with themix-gui
# TODO: Oh my zsh stopping the execution
# TODO: Learn and config tmux
# TODO: Install intel advisor as optional
# TODO: Pywal cli-visualizer
# TODO: Tilling direction on polybar?