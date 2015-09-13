#!/bin/bash
#
# Copy custom files to oh-my-zsh folder.
#
DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
if ! type -t cecho > /dev/null; then
    source $DOTFILES/cecho.sh
fi

cecho "Init oh-my-zsh.sh" $green

OH_MY_ZSH_HOME=$DOTFILES/zsh/oh-my-zsh.symlink
CUSTOM_THEMES_HOME=$OH_MY_ZSH_HOME/custom/themes

cecho "Installing customizations..." $green
mkdir -p $CUSTOM_THEMES_HOME

curl -fsSL https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme > $CUSTOM_THEMES_HOME/cobalt2.zsh-theme

cecho "Done oh-my-zsh.sh" $green
