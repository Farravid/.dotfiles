Blue='\033[0;34m'
Purple='\033[0;35m'
NC='\033[0m' # No Color

printf "${Purple} === Installing yay === ${NC}\n"
sudo pacman -S --noconfirm yay

printf "${Purple} === Updating the system === ${NC}\n"
yay -Syu

printf "${Purple} === Installing Python pre-requisites for install.py === ${NC}\n"
yay -S --noconfirm python-inquirer 

printf "${Purple} === Installing Python pre-requisites for install.py === ${NC}\n"
python ~/.dotfiles/scripts/install.py