GREEN='\033[0;34m'
NC='\033[0m' # No Color

function install()
{
    printf "=== Installing ${GREEN}$1${NC} ===\n"
    yay -S $1

}

install rofi
install nautilus
install github-cli
install google-chrome
install spotify
install visual-studio-code-bin
install flameshot
install neovim
install alacritty