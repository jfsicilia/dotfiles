#!/bin/bash
#
# Config zsh as default shell
#
source ../cecho.sh

cecho "Init zsh.sh" $green

SHELLS_FILE=/etc/shells
# Check wether or not, zsh shell is available in /etc/shells. If not add it.
if ! grep $(which zsh) $SHELLS_FILE > /dev/null; then
    echo "$(which zsh)" >> $SHELLS_FILE
fi
# Change shell.
if chsh -s $(which zsh); then
    cecho "Zsh config as new shell." $green
fi

cecho "Done zsh.sh" $green
