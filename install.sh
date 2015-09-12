#!/bin/bash

echo -e "\n#######################"
echo "# Installing dotfiles #"
echo "#######################"
echo "-- Init install.sh"

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


echo "-- Initializing submodule(s)"
git submodule update --init --recursive

echo -e "\n###################################################"
echo "# Creating simbolic links in HOME to config files #"
echo "###################################################"
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n#####################################################"
    echo "# Installing XCode Command Line Tools for compiling #"
    echo "#####################################################"
    xcode-select --install
    echo "-- Press any key to continue after installing XCode CLT..."
    read -n 1 -s

    echo -e "\n##########################"
    echo "# Brewing all the things #"
    echo "##########################"
    source install/brew.sh

    echo -e "\n#########################"
    echo "# Updating OSX settings #"
    echo "#########################"
    source install/osx.sh

    echo -e "\n##############################"
    echo "# Mackup restore apps config #"
    echo "##############################"
    mackup restore
fi

echo -e "\n###########################"
echo "# Install powerline fonts #"
echo "###########################"
source install/powerline.sh

echo -e "\n#######################"
echo "# Customize oh-my-zsh #"
echo "#######################"
source install/oh-my-zsh.sh

echo -e "\n############################"
echo "# Set zsh as default shell #"
echo "############################"
source install/zsh.sh

echo -e "\n#########################"
echo "# Updating Vim settings #"
echo "#########################"
source install/vi.sh

echo -e "\n-- Done install.sh."
