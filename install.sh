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

printf "${Purple}|.|.|.|.|.| TODO Symlinlk |.|.|.|.|.|${NC}\n"

printf "${Purple}|.|.|.|.|.| Unistaling unnecessary software |.|.|.|.|.|${NC}\n"
# uninstall_pckg palemoon

printf "${Purple}|.|.|.|.|.| Installing package dependencies |.|.|.|.|.|${NC}\n"

# install_pckg rofi
# install_pckg nautilus
# install_pckg github-cli
# install_pckg google-chrome
# install_pckg spotify
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
# install_pckg cava
# install_pckg blueman

printf "${Purple}|.|.|.|.|.| Changing default shell to ${Blue}ZSH${Purple} |.|.|.|.|.|${NC}\n"
#chsh -s /usr/bin/zsh

printf "${Purple}|.|.|.|.|.| Installing ohmyzsh and nerd fonts |.|.|.|.|.|${NC}\n"
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# install_pckg ttf-cascadia-code-nerd

printf "${Purple}|.|.|.|.|.| Installing C++ stuff |.|.|.|.|.|${NC}\n"
# install_pckg premake

printf "${Purple}|.|.|.|.|.| Changing wallpaper |.|.|.|.|.|${NC}\n"
nitrogen --set-auto ./assets/wallpaper2.jpg

printf "${Purple}|.|.|.|.|.| TODO: Copy paste config to home except README, install etc  |.|.|.|.|.|${NC}\n"

