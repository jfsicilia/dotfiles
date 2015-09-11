#!/bin/bash
#
# Config zsh as default shell
#
echo "-- Init zsh.sh"

SHELLS_FILE=/etc/shells
# Check wether or not, zsh shell is available in /etc/shells. If not add it.
if ! grep $(which zsh) $SHELLS_FILE > /dev/null; then
    echo "$(which zsh)" >> $SHELLS_FILE
fi
# Change shell.
if chsh -s $(which zsh); then
    echo "-- Zsh config as new shell."
fi

echo "-- Done zsh.sh"
