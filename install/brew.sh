#!/bin/bash
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init brew.sh." $green

# If brew not installed, install it.
if test ! $(which brew); then
    cecho "Installing homebrew." $green
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cecho "Updating brew..." $green
# Make sure we’re using the latest Homebrew.
brew update

cecho "Upgrading installed formulae." $green
# Upgrade any already-installed formulae.
brew upgrade --all

cecho "Installing homebrew packages..." $green

# cli tools
cli=(
    coreutils
    ack
    duti
    htop
    tree
    wget
    nmap
    openssl
    trash
    the_silver_searcher
    imagemagick
    p7zip
    mackup
)
brew install ${cli[@]}

# development tools
dev=(
    git
    macvim --override-system-vim
    reattach-to-user-namespace
    tmux
    zsh
    highlight
    z
    markdown
    python3
    ruby
)
brew install ${dev[@]}

cecho "Installing homebrew cask packages..." $green
brew install caskroom/cask/brew-cask

# Casks.
apps=(
    android-file-transfer
    seil
    iterm2
    caffeine
    cloud
    dash
    divvy
    ukelele
    freecad
    karabiner
    alfred
    bartender
    disk-inventory-x
    dropbox
    sketchup
    bettertouchtool
    evernote
    keepassx
    skype
    spotify
    steam
    google-chrome
    the-unarchiver
    vmware-fusion
    vlc
    android-file-transfer
    filezilla
    google-earth
    graphviz
    istat-menus
    macdown
    sketchup
    openscad
    appcleaner
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    qlprettypatch
    quicklook-csv
    betterzipql
    qlimagesize
    webpquicklook
    suspicious-package
    yed
    #remote-desktop-connection
    #synology-cloud-station
    #cura
    #eclipse-ide
    #pycharm-cpycharm-ce
    #popcorn-time
)
brew cask install ${apps[@]}

cecho "Done brew.sh" $green

