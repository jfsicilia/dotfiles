#!/bin/bash
#
# Launch duti to make file associations.
#
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init duti" $green

cecho "Running duti/duti.symlink config file" $green
duti -v ~/.duti

cecho "Done duti" $green
