# Setup selector for displaying different programs depending on the work
Purple='\033[0;35m'

# Function to display menu
function display_menu()
{
    echo "Select a setup to display:"
    echo "(Spotify, Discord, Google, Terminal... by default)"
    echo "1. C++"
    echo "2. Godot"
}

function launch_app()
{
    printf "${Purple} == Launching $2 == ${NC}\n"
    $1 &|
    sleep 0.8
    #i3-msg 'move container to workspace '$3'' > /dev/null 2>&1
}

function launch_default_apps()
{
    #launch_app alacritty alacritty 1
    #launch_app discord discord 3
    launch_app google-chrome-stable Google 2
    #launch_app spotify Spotify 3 
    #launch_app "alacritty --hold -e cava" alacritty 3
}

# Function to perform action 1
perform_action_1() {
    echo "Performing Action 1"
    # Add your logic for Action 1 here
}

# Function to perform action 2
perform_action_2() {
    echo "Performing Action 2"
    # Add your logic for Action 2 here
}

echo ""
echo "███████╗ █████╗ ██████╗ ██████╗  █████╗ ██╗   ██╗██╗██████╗ 
██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║   ██║██║██╔══██╗
█████╗  ███████║██████╔╝██████╔╝███████║██║   ██║██║██║  ██║
██╔══╝  ██╔══██║██╔══██╗██╔══██╗██╔══██║╚██╗ ██╔╝██║██║  ██║
██║     ██║  ██║██║  ██║██║  ██║██║  ██║ ╚████╔╝ ██║██████╔╝
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═════╝ "
echo ""
echo ""
neofetch
echo ""
                                                            

# Main script
while true; do
    display_menu

    read -p "Setup (1-2): " choice

    case $choice in
        1)
            perform_action_1
            ;;
        2)
            perform_action_2
            ;;
    esac

    launch_default_apps
    break
done
