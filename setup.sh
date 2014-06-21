#!/bin/bash

dir="dotfiles"
files="vim bash_profile bashrc gdbinit inputrc vimrc git-completion.bash gitconfig git-prompt.sh"

for file in $files; do
    if   [[ "$1" == "unlink" ]]; then
        echo Unlinking ~/.$file
        unlink ~/.$file
    elif [[ "$1" == "link" ]]; then
        echo Linking ~/.$file
        ln -sf $dir/$file ~/.$file
    fi
done

