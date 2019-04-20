# Install Homebrew
xcode-select --install
brew help || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew if possible
brew update

# Install packages
brew install fzf && $(brew --prefix)/opt/fzf/install
brew install ack
brew install figlet
brew install zsh-autosuggestions

# Install powerline fonts
git clone https://github.com/powerline/fonts.git ~/powerline-fonts
cd ~/powerline-fonts
./install.sh
cd ..
rm -rf ~/powerline-fonts
