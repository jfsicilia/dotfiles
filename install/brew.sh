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
    python
    python3
    pyenv
    pyenv-virtualenv
    ruby
)
brew install ${dev[@]}

# Other
other=(
    graphviz
)
brew install ${other[@]}

cecho "Installing homebrew cask packages..." $green
brew install caskroom/cask/brew-cask

# Casks.
apps=(
    alfred
    android-file-transfer
    appcleaner
    bartender
    bettertouchtool
    betterzip
    caffeine
    cheatsheet
    # ultimaker-cura        // Por ahora prefiero no tener la última versión.
    dash
    disk-inventory-x
    divvy
    dropbox
    eve
    filezilla
    freecad
    google-chrome
    google-earth-pro
    istat-menus  
    iterm2
    # karabiner    // Tienes instalada una versión de karabiner adhoc por el tema del capslock
    keepassxc
    macvim
    openscad
    pdf-expert
    popchar
    # remote-desktop-connection   // Not available.
    sketchup
    skype
    spotify
    steam
    # synology-cloud-station    // Not available.
    the-unarchiver
    ukelele
    virtualbox
    visual-studio-code
    vlc
    yed

# Quicklook plugins ____
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlprettypatch
    qlstephen
    qlvideo
    quicklook-csv
    quicklook-json
    quicklookase
    suspicious-package
    webpquicklook
    
# _____________________
)
brew cask install ${apps[@]}

cecho "Done brew.sh" $green

