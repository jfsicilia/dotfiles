#!/bin/bash
source ../cecho.sh

cecho "Init link.sh" $blue

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

cecho "Creating symlinks" $blue
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    if ! test -h $target; then
        cecho "creating symlink for $file in home" $blue
        ln -Fs $file $target
    fi
done

cecho "Done link.sh" $blue
