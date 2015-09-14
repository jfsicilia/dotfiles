#!/bin/bash
source cecho.sh

echo ""
cecho "#######################" $blue
cecho "# Installing dotfiles #" $blue
cecho "#######################" $blue
cecho "Init install.sh" $green

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


cecho "Initializing submodule(s)" $green
git submodule update --init --recursive

echo ""
cecho "###################################################" $blue
cecho "# Creating simbolic links in HOME to config files #" $blue
cecho "###################################################" $blue
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo ""
    cecho "#####################################################" $blue
    cecho "# Installing XCode Command Line Tools for compiling #" $blue
    cecho "#####################################################" $blue
    xcode-select --install
    cecho "Press any key to continue after installing XCode CLT..." $green
    read -n 1 -s

    echo ""
    cecho "##########################" $blue
    cecho "# Brewing all the things #" $blue
    cecho "##########################" $blue
    source install/brew.sh

    echo ""
    cecho "#########################" $blue
    cecho "# Updating OSX settings #" $blue
    cecho "#########################" $blue
    source install/osx.sh

    echo ""
    cecho "##########################" $blue
    cecho "# Duti file associations #" $blue
    cecho "##########################" $blue
    source install/duti.sh

    echo ""
    cecho "##############################" $blue
    cecho "# Mackup restore apps config #" $blue
    cecho "##############################" $blue
    source install/mackup.sh
fi

echo ""
cecho "###########################" $blue
cecho "# Install powerline fonts #" $blue
cecho "###########################" $blue
source install/powerline.sh

echo ""
cecho "#######################" $blue
cecho "# Customize oh-my-zsh #" $blue
cecho "#######################" $blue
source install/oh-my-zsh.sh

echo ""
cecho "############################" $blue
cecho "# Set zsh as default shell #" $blue
cecho "############################" $blue
source install/zsh.sh

echo ""
cecho "#########################" $blue
cecho "# Updating Vim settings #" $blue
cecho "#########################" $blue
source install/vi.sh

cecho "Done install.sh." $green
