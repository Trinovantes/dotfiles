#!/bin/bash

dir=".dotfiles"
files=\
" bash_profile"\
" bashrc"\
" bash-colours.sh"\
" gdbinit"\
" inputrc"\
" vim"\
" vimrc"\
" gitconfig"\
" git-prompt.sh"\
" git-completion.bash"\
" screenfetch.sh"

for file in $files; do
    if   [[ "$1" == "unlink" ]]; then
        echo Unlinking ~/.$file
        unlink ~/.$file
    elif [[ "$1" == "link" ]]; then
        echo Linking ~/.$file
        ln -sf $dir/$file ~/.$file
    fi
done

