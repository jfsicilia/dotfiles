#!/bin/bash
source ../cecho.sh

cecho "Init vi.sh" $green

# Install vim plugins and exit.
if vim +PlugInstall +qall; then
    echo "-- Vim plugins installed."
fi

cecho "Done vi.sh" $green
