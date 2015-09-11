#!/bin/bash
echo "-- Init install.sh"

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo -e "\n-- Installing dotfiles"

echo "-- Initializing submodule(s)"
git submodule update --init --recursive

echo -e "\n-- Linking home dirs/files to the ones in .dotfiles"
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n-- Running on OSX"

    echo -e "\n-- Installing XCode Command Line Tools for compiling"
    xcode-select --install

    echo -e "\n-- Brewing all the things"
    source install/brew.sh

    echo -e "\n-- Updating OSX settings"
    source install/osx.sh
fi

echo -e "\n-- Install powerline fonts"
source install/powerline.sh

echo -e "\n-- Customize oh-my-zsh"
source install/oh-my-zsh.sh

echo -e "\n-- Set zsh as default shell"
source install/zsh.sh

echo -e "\n-- Updating Vim settings"
source install/vi.sh

echo -e "\n-- Done install.sh."
