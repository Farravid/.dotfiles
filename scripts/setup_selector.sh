# Setup selector for displaying different programs depending on the work

# Function to display menu
display_menu() {
    echo "Select a setup to display:"
    echo "(Spotify, Discord and Google by default)"
    echo "1. C++"
    echo "2. Godot"
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

# Function to perform action 3
perform_action_3() {
    echo "Performing Action 3"
    # Add your logic for Action 3 here
}

neofetch
echo ""
echo "███████╗ █████╗ ██████╗ ██████╗  █████╗ ██╗   ██╗██╗██████╗ 
██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║   ██║██║██╔══██╗
█████╗  ███████║██████╔╝██████╔╝███████║██║   ██║██║██║  ██║
██╔══╝  ██╔══██║██╔══██╗██╔══██╗██╔══██║╚██╗ ██╔╝██║██║  ██║
██║     ██║  ██║██║  ██║██║  ██║██║  ██║ ╚████╔╝ ██║██████╔╝
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═════╝ "
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
        3)
            perform_action_3
            ;;
        *)
            echo "Quitting..."
            break
            ;;
    esac

    # Add a newline for better readability
    echo
done