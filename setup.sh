#!/bin/bash

dir="dotfiles"
files="vim bash_profile bashrc gdbinit inputrc vimrc git-completion.bash gitconfig git-prompt.sh"

for file in $files; do
    if [ "$1" == "unlink" ]; then
        echo Unlinking ~/.$file
        unlink ~/.$file
    else
        echo Linking ~/.$file
        ln -sf $dir/$file ~/.$file
    fi
done

