# Setup selector for displaying different programs depending on the work

import subprocess
import time
import inquirer

Purple = '\033[0;35m'
NC = '\033[0m'

def display_decorator():
    subprocess.Popen("neofetch", shell=True)
    time.sleep(0.5)
    print("")
    print("== Default apps ==")
    print("[WS1] Terminal")
    print("[WS2] Firefox")
    print("[WS3] Spotify, Discord")
    print("[WS4] Slack")
    print("")


def launch_app(command, app_name):
    print(f"{Purple} == Launching {app_name} == {NC}")
    subprocess.Popen(command, shell=True, start_new_session=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def launch_default_apps():
    launch_app("kitty", "Blank Kitty")
    launch_app("firefox", "Firefox")
    launch_app("spotify", "Spotify")
    launch_app("discord", "Discord")
    launch_app("slack", "Slack")

def launch_perf_ninja():
    launch_app("code ~/Documents/GitHub/perf-ninja", "Perf ninja in VSCode")
    launch_app("obsidian", "Obsidian")
    launch_app("github-desktop", "Github Desktop")

def launch_dotfiles():
    launch_app("code ~/.dotfiles", "Perf ninja in VSCode")
    launch_app("github-desktop", "Github Desktop")

def launch_interval_map():
    launch_app("code ~/Documents/GitHub/farra_interval_map", "Perf ninja in VSCode")
    launch_app("obsidian", "Obsidian")
    launch_app("github-desktop", "Github Desktop")

def main():
    options = [
        inquirer.List('choice',
                      message="Select a setup to display:",
                      choices = ["perf-ninja", "dotfiles", "interval_map", "None"]
                      )
    ]

    answer = inquirer.prompt(options)
    show_default_apps = inquirer.confirm("Do you want to launch default apps with this setup?", default=True)

    if(show_default_apps): launch_default_apps()

    match answer['choice']:
        case 'perf-ninja'   : launch_perf_ninja()
        case 'dotfiles'     : launch_dotfiles()
        case 'interval_map' : launch_interval_map()

if __name__ == "__main__":
    display_decorator()
    main()