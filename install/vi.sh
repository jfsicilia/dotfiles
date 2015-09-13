#!/bin/bash
if test -f ../cecho.sh; then
    source ../cecho.sh
fi

cecho "Init vi.sh" $green

# Install vim plugins and exit.
if vim +PlugInstall +qall; then
    cecho "Vim plugins installed." $green
fi

cecho "Done vi.sh" $green
