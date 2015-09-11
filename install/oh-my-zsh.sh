#!/bin/bash
#
# Copy custom files to oh-my-zsh folder.
#
echo "-- Init oh-my-zsh.sh"

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
OH_MY_ZSH_HOME=$DOTFILES/zsh/oh-my-zsh.symlink
CUSTOM_THEMES_HOME=$OH_MY_ZSH_HOME/custom/themes

mkdir -p $CUSTOM_THEMES_HOME

curl -fsSL https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme > $CUSTOM_THEMES_HOME/cobalt2.zsh-theme

echo "-- Done oh-my-zsh.sh"
