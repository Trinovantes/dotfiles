dir="dotfiles"
files="vim bash_profile bashrc inputrc vimrc git-completion.bash gitconfig git-prompt.sh"

for file in $files; do
    if [ -z "$1" ]; then
        echo Linking ~/.$file
        ln -s $dir/$file ~/.$file
    else
        echo Unlinking ~/.$file
        unlink ~/.$file
    fi
done

