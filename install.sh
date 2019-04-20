# Install Homebrew (https://brew.sh/)
xcode-select --install
brew help || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew if possible (https://brew.sh/)
brew update

# Install packages (https://brew.sh/)
brew install fzf && $(brew --prefix)/opt/fzf/install
brew install ack
brew install figlet
brew install zsh-autosuggestions

# Install powerline fonts (https://github.com/powerline/fonts)
git clone https://github.com/powerline/fonts.git ~/powerline-fonts
cd ~/powerline-fonts
./install.sh
cd ..
rm -rf ~/powerline-fonts

# Install ZSH (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
brew install zsh zsh-completions
chsh -s /bin/zsh

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
