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

printf "${Purple}|.|.|.|.|.| TODO |.|.|.|.|.|${NC}\n"
