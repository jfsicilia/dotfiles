#!/bin/bash

echo "-- Init vi.sh"

# Install vim plugins and exit.
if vim +PlugInstall +qall; then
    echo "-- Vim plugins installed."
fi

echo "-- Done vi.sh"
