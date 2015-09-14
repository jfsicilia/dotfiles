#!/bin/bash
#
# Executes mackup restore.
#
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init mackup" $green

cecho "Executing mackup restore..." $green
mackup restore

cecho "Done mackup" $green
