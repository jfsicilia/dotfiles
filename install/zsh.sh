#!/bin/bash

# echo "Configuring zsh as default shell"
SHELLS_FILE=/etc/shells
if ! grep $(which zsh) $SHELLS_FILE > /dev/null; then
    echo "$(which zsh)" >> $SHELLS_FILE
fi
if chsh -s $(which zsh); then
    echo "-- Zsh config as new shell."
fi
