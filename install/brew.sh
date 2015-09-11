#!/bin/sh
echo "-- Init brew.sh."

# If brew not installed, install it.
if test ! $(which brew); then
    echo "-- Installing homebrew."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "-- Updating brew..."
# Make sure we’re using the latest Homebrew.
brew update

echo "-- Upgrading installed formulae."
# Upgrade any already-installed formulae.
brew upgrade --all

echo "-- Installing homebrew packages..."

# cli tools
brew install ack
brew install tree
brew install wget
brew install nmap
brew install openssl
brew install trash
brew install imagemagick
brew install p7zip

# development tools
brew install git
# brew install hub
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install z
brew install markdown
brew install python3
brew install ruby

echo "-- Installing homebrew cask packages..."
# Install cask and casks.
brew install caskroom/cask/brew-cask

brew cask install seil
brew cask install iterm2
brew cask install caffeine
brew cask install cloud
brew cask install dash
brew cask install divvy
brew cask install ukelele
brew cask install freecad
brew cask install alfred
brew cask install bartender
brew cask install disk-inventory-x
brew cask install dropbox
# brew cask install cura
brew cask install bettertouchtool
brew cask install evernote
brew cask install keepassx
brew cask install skype
brew cask install spotify
brew cask install google-chrome
# brew cask install synology-cloud-station
brew cask install the-unarchiver
brew cask install vmware-fusion
brew cask install vlc
brew cask install android-file-transfer
brew cask install filezilla
brew cask install google-earth
brew cask install graphviz
brew cask install istat-menus
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json \
qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook \
suspicious-package

echo "-- Done brew.sh"
