#!/bin/sh

PS3='Where do you like to install your dotfiles? '
options=("OSX" "Visual Studio Code Online" "Windows" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "OSX")
            sh ~/dotfiles/install/osx/install.sh
            break
            ;;
        "Visual Studio Code Online")
            sh ~/dotfiles/install/vsc/install.sh
            break
            ;;
        "Windows")
            sh ~/dotfiles/install/win/install.sh
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done
