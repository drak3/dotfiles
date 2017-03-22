#!/bin/bash

#Given <file>, creates symlink ~/.<file> -> $PWD/<file>
#DOES PREPEND A DOT TO FILE
#Example: 'dot_link zshrc' creates symlink ~/.zshrc -> dotfiles/zshrc
function dot_link {
	ln -s "$PWD/$1" "$HOME/.$1"
}

#Given <file>, creates symlink ~/<file> -> $PWD/<file>
#DOES NOT PREPEND DOT
function plain_link {
	ln -s "$PWD/$1" "$HOME/$1"
}

dot_link zshrc
dot_link zshrc.local

dot_link vimrc

