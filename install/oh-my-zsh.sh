#!/bin/bash
OH_MY_ZSH_HOME=~/.dotfiles/zsh/oh-my-zsh.symlink
CUSTOM_THEMES_HOME=$OH_MY_ZSH_HOME/custom/themes

git clone git://github.com/robbyrussell/oh-my-zsh.git $OH_MY_ZSH_HOME


mkdir -p $CUSTOM_THEMES_HOME

curl -fL https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme > $CUSTOM_THEMES_HOME/cobalt2.zsh-theme
