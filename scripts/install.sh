# TODO: We should move this to a python script to select and check the diferent packages

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
yay -Syu

printf "${Purple}|.|.|.|.|.| Installing Python stuff |.|.|.|.|.|${NC}\n"
install_pckg python-inquirer