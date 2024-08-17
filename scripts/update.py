import subprocess
import common

#########################################################################

def update_system():
    print(common.Purple + "\n=== Update system with yay ===" + common.NC)
    subprocess.run("yay -Syu", shell=True)

#########################################################################

def update_code_extensions():
    print(common.Purple + "\n=== Update code extensions ===" + common.NC)
    subprocess.run("code --update-extensions", shell=True)

#########################################################################

def update_spicetify():
    print(common.Purple + "\n=== Update spicetify ===" + common.NC)
    subprocess.run("spicetify update", shell=True)

#########################################################################


def main():
    print(r"""
    ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗
    ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝
    ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  
    ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  
    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗
    ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝                                                                                                                   
    """)
    
    update_system()
    update_code_extensions()
    common.perform_sym_links()
    
if __name__ == "__main__":
    main()