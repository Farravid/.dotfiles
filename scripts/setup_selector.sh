# Setup selector for displaying different programs depending on the work
stty -echo

# Function to display menu
function display_menu()
{
    echo "Select a setup to display:"
    echo "(Spotify, Discord and Google by default)"
    echo "1. C++"
    echo "2. Godot"
}

function launch_app()
{
    $1 &
    sleep 0.5
    i3-msg '[class='$2'] move container to workspace '$3'' 
}

function launch_default_apps()
{
    launch_app discord discord 3
    launch_app google-chrome-stable Google 2
    launch_app spotify Spotify 3
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

    echo
done
