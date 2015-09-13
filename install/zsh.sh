#!/bin/bash
#
# Config zsh as default shell
#
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

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
