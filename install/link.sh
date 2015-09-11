#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "-- creating symlinks"
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename $file ".symlink" )"
    if ! test -h $target; then
        echo "-- creating symlink for $file in home"
        ln -s $file $target
    fi
done
