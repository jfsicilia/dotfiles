#!/bin/bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "-- Installing dotfiles"

echo "-- Initializing submodule(s)"
git submodule update --init --recursive

echo "-- Linking home dirs/files to the ones in .dotfiles"
source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "-- Running on OSX"

    echo "-- Installing XCode Command Line Tools for compiling"
    xcode-select --install

    echo "-- Brewing all the things"
    source install/brew.sh

    echo "-- Updating OSX settings"
    source install/osx.sh
fi

echo "-- Updating Zsh settings"
source install/zsh.sh

echo "-- Updating Vim settings"
source install/vi.sh

echo "-- Done."
