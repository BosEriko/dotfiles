# Dotfiles

I mainly use VSCode now so this is more of a personal editor settings rather than a dotfiles folder.

## Dependencies
- [Git](https://git-scm.com)
- [Z shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [fzf](https://github.com/junegunn/fzf)
- [Visual Studio Code](https://code.visualstudio.com/)

## Installation

    git clone git@github.com:BosEriko/dotfiles.git ~/dotfiles
    rm ~/.gitconfig && ln -s ~/dotfiles/gitconfig ~/.gitconfig
    rm ~/.zshrc && ln -s ~/dotfiles/zshrc ~/.zshrc
    rm ~/.profile && ln -s ~/dotfiles/profile ~/.profile
    rm ~/Library/Application\ Support/Code/User/settings.json && ln -s ~/dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    rm ~/Library/Application\ Support/Code/User/keybindings.json && ln -s ~/dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

## Installation of Visual Studio Code extensions

    code --install-extension CoenraadS.bracket-pair-colorizer
    code --install-extension idleberg.hopscotch
    code --install-extension jcbuisson.vue
    code --install-extension karunamurti.haml
    code --install-extension mrmlnc.vscode-autoprefixer
    code --install-extension ms-vsliveshare.vsliveshare
    code --install-extension oderwat.indent-rainbow
    code --install-extension PKief.material-icon-theme
    code --install-extension rebornix.ruby
    code --install-extension robinbentley.sass-indented
    code --install-extension ryuta46.multi-command
    code --install-extension sianglim.slim
    code --install-extension vscodevim.vim
    code --install-extension waderyan.gitblame
    code --install-extension wayou.vscode-todo-highlight

_Remember to install [Font Ligatures](https://github.com/tonsky/FiraCode) as well_

## Get the list of currently installed Visual Studio Code extensions

    code --list-extensions | xargs -L 1 echo code --install-extension

------

# Visual Studio Code Custom Hotkeys (Mac)

### General Commands
Command Name                                              | Combination
---                                                       | ---
Show all Commands                                         | `cmd` + (`g` ~ `a`)
Open a Project                                            | `cmd` + (`g` ~ `o`)
Add Folder to Workspace                                   | `cmd` + (`g` ~ `w`)
Remove Folder from Workspace                              | `cmd` + (`g` ~ `d`)
Format Document                                           | `cmd` + (`g` ~ `f`)
Change Language Mode                                      | `cmd` + (`g` ~ `m`)
Previous in Quick Open                                    | `cmd` + (`g` ~ `k`)
Next in Quick Open                                        | `cmd` + (`g` ~ `j`)

### Search Commands
Command Name                                              | Combination
---                                                       | ---
Fuzzy Search                                              | `cmd` + (`s` ~ `s`)
Inside Project                                            | `cmd` + (`s` ~ `p`)
Inside Project and Replace                                | `cmd` + (`s` ~ `shift` + `p`)
Inside File                                               | `cmd` + (`s` ~ `i`)
Inside File and Replace                                   | `cmd` + (`s` ~ `shift` + `i`)
Inside Folder                                             | `cmd` + (`s` ~ `o`)
Inside Folder and Replace                                 | `cmd` + (`s` ~ `shift` + `o`)
Previous Search Result                                    | `cmd` + (`s` ~ `k`)
Next Search Result                                        | `cmd` + (`s` ~ `j`)

### Explorer Commands
Command Name                                              | Combination
---                                                       | ---
Open Explorer                                             | `cmd` + (`x` ~ `x`)
New File                                                  | `cmd` + (`x` ~ `n`)
New Folder                                                | `cmd` + (`x` ~ `f`)
Reveal in Finder                                          | `cmd` + (`x` ~ `e`)
Open in Integrated Terminal                               | `cmd` + (`x` ~ `i`)
Open to the Side                                          | `cmd` + (`x` ~ `s`)
Copy Path                                                 | `cmd` + (`x` ~ `h`)
Copy File                                                 | `cmd` + (`x` ~ `c`)
Paste File                                                | `cmd` + (`x` ~ `v`)
Delete File                                               | `cmd` + (`x` ~ `d`)
Rename File                                               | `cmd` + (`x` ~ `r`)

### Toggle Commands
Command Name                                              | Combination
---                                                       | ---
Everything ([?](https://vscodecandothat.com/))            | `cmd` + (`t` ~ `t`)
Zen Mode                                                  | `cmd` + (`t` ~ `z`)
Bottom Panel                                              | `cmd` + (`t` ~ `i`)
Bottom Status Bar                                         | `cmd` + (`t` ~ `s`)
Sidebar                                                   | `cmd` + (`t` ~ `x`)
Activity Bar                                              | `cmd` + (`t` ~ `a`)
Editor Tabs                                               | `cmd` + (`t` ~ `e`)
Minimap                                                   | `cmd` + (`t` ~ `m`)
Word Wrap                                                 | `cmd` + (`t` ~ `w`)

### Integrated Terminal Commands
Command Name                                              | Combination
---                                                       | ---
Focus on Integrated Terminal                              | `cmd` + (`i` ~ `i`)
Previous Terminal                                         | `cmd` + (`i` ~ `j`)
Next Terminal                                             | `cmd` + (`i` ~ `k`)
Kill Current Terminal                                     | `cmd` + (`i` ~ `d`)
Split Pane                                                | `cmd` + (`i` ~ `s`)
Move to left Pane                                         | `cmd` + (`i` ~ `h`)
Move to right Pane                                        | `cmd` + (`i` ~ `l`)
Close Active Pane                                         | `cmd` + (`i` ~ `x`)
Create New Terminal                                       | `cmd` + (`i` ~ `n`)
Maximize Bottom Panel                                     | `cmd` + (`i` ~ `m`)
Clear the Terminal                                        | `cmd` + (`i` ~ `c`)

### Fold Commands
Command Name                                              | Combination
---                                                       | ---
Fold                                                      | `cmd` + (`f` ~ `f`)
Fold Recursively                                          | `cmd` + (`f` ~ `shift` + `f`)
Unfold                                                    | `cmd` + (`f` ~ `u`)
Unfold Recursively                                        | `cmd` + (`f` ~ `shift` + `u`)
Fold All                                                  | `cmd` + (`f` ~ `a`)
Unfold All                                                | `cmd` + (`f` ~ `shift` + `a`)
Fold All Block Comments                                   | `cmd` + (`f` ~ `c`)
Fold Level X (Up to level 7)                              | `cmd` + (`f` ~ `1`)

### Editor Commands
Command Name                                              | Combination
---                                                       | ---
Focus on the Editor                                       | `cmd` + (`e` ~ `e`)
Previous Window                                           | `cmd` + (`e` ~ `j`)
Next Window                                               | `cmd` + (`e` ~ `k`)
Move Window to the left (Tab List)                        | `cmd` + (`e` ~ `[`)
Move Window to the Right (Tab List)                       | `cmd` + (`e` ~ `]`)
Close Current Window                                      | `cmd` + (`e` ~ `d`)
Split Window                                              | `cmd` + (`e` ~ `s`)
Toggle Split Vertically/Horizontally                      | `cmd` + (`e` ~ `v`)
Move to left Split Window                                 | `cmd` + (`e` ~ `h`)
Move to right Split Window                                | `cmd` + (`e` ~ `l`)
Close Active Split Window                                 | `cmd` + (`e` ~ `x`)
Comment Highlighted Line                                  | `cmd` + (`e` ~ `c`)
Open Preview to the Side (Markdown)                       | `cmd` + (`e` ~ `m`)
Close Saved Editors in Group                              | `cmd` + (`e` ~ `o`)
Save Changes                                              | `cmd` + (`e` ~ `enter`)

### Extensions Commands
Command Name                                              | Combination
---                                                       | ---
Autoprefix CSS                                            | `cmd` + (`h` ~ `p`)

### Vim Extension Keys
Command Name                                              | Combination
---                                                       | ---
Add Selection To Next Find Match                          | `ctrl` + `shift` + `n`
Add Cursor Below                                          | `ctrl` + `shift` + `j`
Add Cursor Above                                          | `ctrl` + `shift` + `k`

_Commands with ~ are chord commands_

_You can also use Vim's Easymotion. Refer [here](https://github.com/VSCodeVim/Vim#vim-easymotion) for more information._

------

### Reference
* [Default Mac Keyboard Shortcuts](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)
* [VS Code Can Do That? (Video)](https://www.youtube.com/watch?v=Xco-TEI-HU4)
* [VS Code Can Do That? (Website)](https://vscodecandothat.com/)
* [10 Most Useful Tips And Tricks](https://www.youtube.com/watch?v=cVGMldhVRxU)
* [Visual Studio Code Key Bindings](https://code.visualstudio.com/docs/getstarted/keybindings)

------

## Call to action
If you want to share some ideas you can email me at mail@boseriko.com.