#!/bin/bash
if test -f ../cecho.sh; then
    source ../cecho.sh
fi

cecho "Init link.sh" $green

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

cecho "Creating symlinks" $green

# linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
linkables=(
    $DOTFILES/bash/bashrc
    $DOTFILES/bash/bash_profile
    $DOTFILES/git/gitconfig
    $DOTFILES/git/gitignore_global
    $DOTFILES/tmux/tmux.conf
    $DOTFILES/vim/vimrc
    $DOTFILES/zsh/oh-my-zsh
    $DOTFILES/zsh/zshrc
    $DOTFILES/mac/mackup/mackup.cfg
)

for file in ${linkables[@]} ; do
    #target="$HOME/.$( basename $file ".symlink" )"
    target="$HOME/.$( basename $file )"
    if ! test -h $target; then
        cecho "creating symlink for $file in home" $green
        ln -Fs $file $target
    fi
done

cecho "Done link.sh" $green
