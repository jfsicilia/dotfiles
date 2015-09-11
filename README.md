# JFSicilia's dotfiles

To get my dotfiles, clone them by typing:

~~~bash
git clone https://github.com/jfsicilia/dotfiles
~~~

If you want to put them in a specific path, simply type:

~~~bash
git clone https://github.com/jfsicilia/dotfiles this/is/my/path
~~~

**Note:** I put my dotfiles in my ```~/Documents/settings/dotfiles``` and then create a symlink from ```~/.dotfiles```. I have used the symbolic links approach for my dotfiles, so every config file in my home directory will be a symlink to my ```~/.dotfiles``` version.

*Config files in my home dir link to .dotfiles version:*

~~~bash
.bash_profile -> ~/.dotfiles/bash/bash_profile.symlink
.bashrc -> ~/.dotfiles/bash/bashrc.symlink
.gitconfig -> ~/.dotfiles/git/gitconfig.symlink
.gitignore_global -> ~/.dotfiles/git/gitignore_global.symlink
.tmux.conf -> ~/.dotfiles/tmux/tmux.conf.symlink
.vimrc -> ~/.dotfiles/vim/vimrc.symlink
.zshrc -> ~/.dotfiles/zsh/zshrc.symlink
~~~ 

## Installation

When you have cloned the repository, go to the dotfile folder and execute:

~~~bash
install.sh
~~~

It would prompt asking for your password, and then it would start executing the scripts (.sh) in the ```install``` folder.

## Contents

* bash basic configuration.
* zsh configuration (using oh-my-zsh with customizations).
* git configuration.
* tmux configuration.
* vim configuration (+ plugins managed by vim-plug).
* MAC OSX configuration
	* ```Brew``` installation of software (also using ```brew cask``` for GUI Mac Apps).
	* OSX tuning based on [Mathias Bynens famous osx script](https://github.com/mathiasbynens/dotfiles/.osx)
	* Terminal and iterm2 solarized themes configuration.
	* Custom keyboard layout installation.
	* Powerline fonts installation.
	* Automator and AppleScript services/workflows/apps installation.
	

## Thanks to...

* [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles).
* [Nick Nisi](http://nicknisi.com) and his [dotfiles repository](https://github.com/nicknisi/dotfiles).


