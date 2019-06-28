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
    ack
    coreutils
    duti
    htop
    imagemagick
    mackup
    nmap
    openssl
    p7zip
    the_silver_searcher
    trash
    tree
    wget
)
brew install ${cli[@]}

# development tools
dev=(
    git
    highlight
    macvim
    markdown
    pyenv
    pyenv-virtualenv
    python
    python3
    reattach-to-user-namespace
    ruby
    tmux
    z
    zsh
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
    ammonite
    android-file-transfer
    android-studio
    appcleaner
    arduino
    backuploupe
    balenaetcher
    bartender
    bettertouchtool
    betterzip
    caffeine
    cheatsheet
    command-tab-plus
    # ultimaker-cura        // Por ahora prefiero no tener la última versión.
    darktable
    dash
    default-folder-x
    diffmerge
    disk-inventory-x
    divvy
    drawio
    dropbox
    duet
    dupeguru
    eagle
    easyfind
    eve
    # evernote
    filezilla
    find-any-file
    firefox
    flixtools
    freecad
    freefilesync
    freemind
    geogebra
    google-chrome
    google-earth-pro
    grandperspective
    hex-fiend
    ichm
    iina
    istat-menus
    iterm2
    joplin
    # karabiner-elements    // Tienes instalada una versión de karabiner adhoc por el tema del capslock
    keepassxc
    launchcontrol
    lightworks
    macvim
    namechanger
    onyx
    openscad
    # paragon-ntfs  // No lo pongo por si me deja de funcionar el que ya tengo. Igual le valen las credenciales del disco duro Samsung.
    plex-media-player
    pdf-expert
    popchar
    rawtherapee
    # remote-desktop-connection   // Not available.
    sketchup
    skype
    slack
    spotify
    steam
    stellarium
    # synology-cloud-station    // Not available.
    tagspaces
    the-unarchiver
    trickster
    typora
    ukelele
    virtualbox
    visual-studio-code
    vlc
    whatsapp
    yed
    zoomus

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

