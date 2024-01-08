# TODO: We should move this to a python script to select and check the diferent packages

# background maker: colorkit

Blue='\033[0;34m'
Purple='\033[0;35m'
NC='\033[0m' # No Color

function install_pckg()
{
    printf "=== Installing ${Blue}$1${NC} ===\n"
    yay -S $1

}

function uninstall_pckg()
{
    printf "=== Uninstalling ${Blue}$1${NC} ===\n"
    yay -Rcns $1

}

printf "${Purple}|.|.|.|.|.| Updating the system |.|.|.|.|.|${NC}\n"
# yay -Syu

printf "${Purple}|.|.|.|.|.| TODO Symlinlk |.|.|.|.|.|${NC}\n"

printf "${Purple}|.|.|.|.|.| Unistaling unnecessary software |.|.|.|.|.|${NC}\n"
# uninstall_pckg palemoon
# uninstall_pckg volumeicon

printf "${Purple}|.|.|.|.|.| Installing package dependencies |
.|.|.|.|.|${NC}\n"

# install_pckg rofi
# install_pckg nautilus
# install_pckg github-cli
# install_pckg git-lfs
# install_pckg github-desktop
# install_pckg google-chrome
# install_pckg visual-studio-code-bin
# install_pckg flameshot
# install_pckg neovim
# install_pckg alacritty
# install_pckg neofetch
# install_pckg nitrogen
# install_pckg discord
# install_pckg obsidian 
# install_pckg tmux
# install_pckg polybar
# install_pckg blueman
# install_pckg appimagelauncher
# install_pckg fsearch

printf "${Purple}|||||| Installing music/sound package dependencies ||||||${NC}\n"

# install_pckg pulseaudio
# install_pckg spotify
# install_pckg cava
# install_pckg pavucontrol
# install_pckg playerctl

printf "${Purple}|.|.|.|.|.| Changing default shell to ${Blue}ZSH${Purple} |.|.|.|.|.|${NC}\n"
#chsh -s /usr/bin/zsh

printf "${Purple}|.|.|.|.|.| Installing ohmyzsh and nerd fonts |.|.|.|.|.|${NC}\n"
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# install_pckg ttf-cascadia-code-nerd

printf "${Purple}|.|.|.|.|.| Installing C++ stuff |.|.|.|.|.|${NC}\n"
# install_pckg premake

printf "${Purple}|.|.|.|.|.| Installing Python stuff |.|.|.|.|.|${NC}\n"
# install_pckg python-inquirer
# install_pckg python-pywal
# install_pckg colorz

printf "${Purple}|.|.|.|.|.| Installing Dygma keyboard stuff |.|.|.|.|.|${NC}\n" TODO
# ttps://github.com/Dygmalab/Bazecor/releases/download/v1.3.9/Bazecor-1.3.9-x64.AppImage

printf "${Purple}|.|.|.|.|.| Changing wallpaper |.|.|.|.|.|${NC}\n"
# nitrogen --set-auto ~/dotfiles/assets/wallpaper2.jpg
