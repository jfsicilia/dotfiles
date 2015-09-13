#!/bin/bash
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init vi.sh" $green

# Install vim plugins and exit.
if vim +PlugInstall +qall; then
    cecho "Vim plugins installed." $green
fi

cecho "Done vi.sh" $green
