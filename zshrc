# ===========================================================================================================[ Load Tmux ]===== #
if [ "$TMUX" = "" ]; then tmux; fi

# =================================================================================[ Path to your oh-my-zsh installation ]===== #
export ZSH=$HOME/.oh-my-zsh

# =======================================================================================================[ Current theme ]===== #
ZSH_THEME="geoffgarside"

# =============================================================================================================[ History ]===== #
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# =============================================================================================================[ Sources ]===== #
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# ==========================================================================================================[ FZF Search ]===== #
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# =================================================================================================================[ NVM ]===== #
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# =================================================================================================================[ RVM ]===== #
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ======================================================================================================[ Tmux Shortcuts ]===== #
alias tx-new="tmux new-session"
alias tx-list="tmux list-sessions"
alias tx-last="tmux attach-session"
alias tx-clean="tmux kill-session -a"

# ================================================================================================[ Back Directory Alias ]===== #
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ====================================================================================================[ Python 3 Default ]===== #

alias python="python3"

# ================================================================================================[ Docker-compose Alias ]===== #

alias dcrw="docker-compose run web"

# ====================================================================================================[ Avoid using Code ]===== #

alias code="vim"

# =================================================================================================================[ Bos ]===== #
BOS_HELP_MESSAGE="

    This is a helper showing all your Bos commands.


    Usage: bos [option] [command]

\033[1m
    Options:                    Commands:               Description:
\033[0m

    -h, --help                                          Show all commands

    -vs, --vscode               general                 List General Commands
                                search                  List Search Commands
                                explorer                List Explorer Commands
                                toggle                  List Toggle Commands
                                terminal                List Integrated Terminal Commands
                                fold                    List Fold Commands
                                editor                  List Editor Commands
                                extensions              List Extensions Commands
                                vim                     List Vim Extension Keys
                                reference               List Reference
                                copy-extensions         Copy installed Visual Studio Code extensions as executable commands

    -f, --fun                   parrot                  Party Parrot
                                parrotsay               Parrot Say

    -a, --assist                shutdown                Shutdown the computer
                                restart                 Restart the computer
                                ssh-key                 Print Main SSH Key
                                localhost               Start http-server
                                localhost-live          Start live-server
                                ngrok                   Start ngrok
                                google-chrome           Start Google Chrome
                                set-git-origin          Set Git Origins
                                cpu-usage               Start htop
                                cpu-temp                Start istats
                                clearbin                Clear system trash
                                npm-list                List global npm packages
                                npm-outdated            List global outdated npm packages
                                npm-update              Update global npm packages
                                external-ip             Show external IP address
                                restart-zsh             Restart ZSH

    -d, --directory             work                    Jump to work directory
                                personal                Jump to personal directory
                                dotfiles                Jump to the dotfiles directory

\033[1m
    VSCode Notes:
\033[0m
    1. Commands with ~ are chord commands
    2. You can also use Vim's Easymotion [https://github.com/VSCodeVim/Vim#vim-easymotion]

"
bos() {
    if [ -z "$1" ]; then
        echo "Type -h or --help to print all the Bos commands."
    else
        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            figlet 'El Psy Congroo!' && echo -e $BOS_HELP_MESSAGE
        elif [ "$1" = "-vs" ] || [ "$1" = "--vscode" ]; then
            if [ "$2" = "general" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (g ~ a)               Show all Commands
    cmd + (g ~ o)               Open a Project
    cmd + (g ~ w)               Add Folder to Workspace
    cmd + (g ~ d)               Remove Folder from Workspace
    cmd + (g ~ f)               Format Document
    cmd + (g ~ m)               Change Language Mode
    cmd + (g ~ v)               Toggle Developer Tools
    ctrl + k                    Previous in Quick Open
    ctrl + j                    Next in Quick Open
                "
            elif [ "$2" = "search" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (s ~ s)               Fuzzy Search
    cmd + (s ~ p)               Inside Project
    cmd + (s ~ shift + p)       Inside Project and Replace
    cmd + (s ~ i)               Inside File
    cmd + (s ~ shift + i)       Inside File and Replace
    cmd + (s ~ o)               Inside Folder
    cmd + (s ~ shift + o)       Inside Folder and Replace
    cmd + (s ~ k)               Previous Search Result
    cmd + (s ~ j)               Next Search Result
                "
            elif [ "$2" = "explorer" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (x ~ x)               Open Explorer
    cmd + (x ~ n)               New File
    cmd + (x ~ f)               New Folder
    cmd + (x ~ e)               Reveal in Finder
    cmd + (x ~ i)               Open in Integrated Terminal
    cmd + (x ~ s)               Open to the Side
    cmd + (x ~ h)               Copy Path
    cmd + (x ~ c)               Copy File
    cmd + (x ~ v)               Paste File
    cmd + (x ~ d)               Delete File
    cmd + (x ~ r)               Rename File
                "
            elif [ "$2" = "toggle" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (t ~ t)               Everything (Multi-Key)
    cmd + (t ~ z)               Zen Mode
    cmd + (t ~ i)               Bottom Panel
    cmd + (t ~ s)               Bottom Status Bar
    cmd + (t ~ x)               Sidebar
    cmd + (t ~ a)               Activity Bar
    cmd + (t ~ e)               Editor Tabs
    cmd + (t ~ m)               Minimap
    cmd + (t ~ w)               Word Wrap
                "
            elif [ "$2" = "terminal" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (i ~ i)               Focus on Integrated Terminal
    cmd + (i ~ j)               Previous Terminal
    cmd + (i ~ k)               Next Terminal
    cmd + (i ~ d)               Kill Current Terminal
    cmd + (i ~ s)               Split Pane
    cmd + (i ~ h)               Move to left Pane
    cmd + (i ~ l)               Move to right Pane
    cmd + (i ~ x)               Close Active Pane
    cmd + (i ~ n)               Create New Terminal
    ctrl + k                    Scroll Up (Line)
    ctrl + j                    Scroll Down (Line)
    cmd + (i ~ m)               Maximize Bottom Panel
    cmd + (i ~ c)               Clear the Terminal
                "
            elif [ "$2" = "fold" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (f ~ f)               Fold
    cmd + (f ~ shift + f)       Fold Recursively
    cmd + (f ~ u)               Unfold
    cmd + (f ~ shift + u)       Unfold Recursively
    cmd + (f ~ a)               Fold All
    cmd + (f ~ shift + a)       Unfold All
    cmd + (f ~ c)               Fold All Block Comments
    cmd + (f ~ 1)               Fold Level X (Up to level 7)
                "
            elif [ "$2" = "editor" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (e ~ e)               Focus on the Editor
    cmd + (e ~ j)               Previous Window
    cmd + (e ~ k)               Next Window
    cmd + (e ~ [)               Move Window to the left (Tab List)
    cmd + (e ~ ])               Move Window to the Right (Tab List)
    cmd + (e ~ d)               Close Current Window
    cmd + (e ~ s)               Split Window
    cmd + (e ~ v)               Toggle Split Vertically/Horizontally
    cmd + (e ~ h)               Move to left Split Window
    cmd + (e ~ l)               Move to right Split Window
    cmd + (e ~ x)               Close Active Split Window
    cmd + (e ~ c)               Comment Highlighted Line
    cmd + (e ~ m)               Open Preview to the Side (Markdown)
    cmd + (e ~ o)               Close Saved Editors in Group
    cmd + (e ~ enter)           Save Changes
                "
            elif [ "$2" = "extensions" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    cmd + (h ~ p)               Autoprefix CSS
    cmd + (h ~ w)               Wrap in HTML Tags
    cmd + (h ~ b)               Toggle Line Blame Annotations
    cmd + (h ~ o)               List Projects to Open
    cmd + (h ~ s)               Sort lines
    cmd + (h ~ r)               VSNotes: List recent notes
    cmd + (h ~ t)               VSNotes: List tags
    cmd + (h ~ c)               VSNotes: Create a New Note
    cmd + (h ~ f)               VSNotes: Search notes
                "
            elif [ "$2" = "vim" ]; then
                echo -e "\033[1m
    Command:                    Name:
\033[0m
    ctrl + shift + n            Add Selection To Next Find Match
    ctrl + shift + j            Add Cursor Below
    ctrl + shift + k            Add Cursor Above
                "
            elif [ "$2" = "copy-extensions" ]; then
                code --list-extensions | xargs -L 1 echo code --install-extension  | pbcopy
                echo "List of extensions has been copied to clipboard."
            elif [ "$2" = "reference" ]; then
                echo -e "\033[1m
    Name:                               Link:
\033[0m
    Default Mac Keyboard Shortcuts      https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf
    VS Code Can Do That? (Video)        https://www.youtube.com/watch?v=Xco-TEI-HU4
    VS Code Can Do That? (Website)      https://vscodecandothat.com/
    10 Most Useful Tips And Tricks      https://www.youtube.com/watch?v=cVGMldhVRxU
    Visual Studio Code Key Bindings     https://code.visualstudio.com/docs/getstarted/keybindings
                "
            else
                echo "Usage: -vs <command> or --vscode <command>"
            fi
        elif [ "$1" = "-f" ] || [ "$1" = "--fun" ]; then
            if [ "$2" = "parrot" ]; then
                curl parrot.live
            elif [ "$2" = "parrotsay" ]; then
                parrotsay
            else
                echo "Usage: -f <command> or --fun <command>"
            fi
        elif [ "$1" = "-a" ] || [ "$1" = "--assist" ]; then
            if [ "$2" = "shutdown" ]; then
                sudo shutdown -h now
            elif [ "$2" = "restart" ]; then
                sudo shutdown -r now
            elif [ "$2" = "ssh-key" ]; then
                cat ~/.ssh/id_rsa.pub | pbcopy
                echo "SSH Key has been copied to clipboard."
            elif [ "$2" = "localhost" ]; then
                if [ -z "$3" ]; then
                    http-server
                else
                    http-server $3
                fi
            elif [ "$2" = "localhost-live" ]; then
                if [ -z "$3" ]; then
                    live-server
                else
                    live-server $3
                fi
            elif [ "$2" = "ngrok" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a port"
                else
                    ngrok http --region=ap $3
                fi
            elif [ "$2" = "google-chrome" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Google Chrome" $3
                fi
            elif [ "$2" = "set-git-origin" ]; then
                echo "Please specify the GitHub path:"
                read github_path
                echo "Please specify the GitLab path:"
                read gitlab_path
                echo "Please specify the Bitbucket path:"
                read bitbucket_path
                git remote add origin $github_path
                git remote add github $github_path
                git remote add gitlab $gitlab_path
                git remote add bitbucket $bitbucket_path
                git remote set-url --add --push origin $github_path
                git remote set-url --add --push origin $gitlab_path
                git remote set-url --add --push origin $bitbucket_path
                git remote -v
            elif [ "$2" = "cpu-usage" ]; then
                htop
            elif [ "$2" = "cpu-temp" ]; then
                istats
            elif [ "$2" = "clearbin" ]; then
                rm -rf ~/.local/share/Trash/*
            elif [ "$2" = "npm-list" ]; then
                npm list -g --depth=0
            elif [ "$2" = "npm-outdated" ]; then
                npm outdated -g --depth=0
            elif [ "$2" = "npm-update" ]; then
                npm update -g
            elif [ "$2" = "external-ip" ]; then
                curl ipinfo.io/ip
            elif [ "$2" = "restart-zsh" ]; then
                source ~/.zshrc
            else
                echo "Usage: -a <command> or --assist <command>"
            fi
        elif [ "$1" = "-d" ] || [ "$1" = "--directory" ]; then
            if [ "$2" = "work" ]; then
                cd ~/Documents/Codes/Work
            elif [ "$2" = "personal" ]; then
                cd ~/Documents/Codes/Personal
            elif [ "$2" = "dotfiles" ]; then
                cd ~/dotfiles
            else
                echo "Usage: -d <command> or --directory <command>"
            fi
        else
            echo "Command not found: $1"
        fi
    fi
}

# =========================================================================================================[ End of File ]===== #
