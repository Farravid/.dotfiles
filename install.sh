Blue='\033[0;34m'
Purple='\033[0;35m'
NC='\033[0m' # No Color

function install_pckg()
{
    printf "=== Installing ${Blue}$1${NC} ===\n"
    yay -S $1

}

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

printf "${Purple}|.|.|.|.|.| Changing default shell to ${Blue}ZSH${Purple} |.|.|.|.|.|${NC}\n"
chsh -s /usr/bin/zsh

printf "${Purple}|.|.|.|.|.| Installing ohmyzsh |.|.|.|.|.|${NC}\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

