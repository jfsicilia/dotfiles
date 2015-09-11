#!/bin/bash

# Install vim plugins and exit.
if vim +PlugInstall +qall; then
    echo "-- Vim plugins installed."
fi
