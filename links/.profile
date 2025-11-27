#------------------------------------------------------------------------------
# Custom variables
#------------------------------------------------------------------------------

export SVN_EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
export VCPKG_ROOT=$HOME/vcpkg

#------------------------------------------------------------------------------
# PATH
#------------------------------------------------------------------------------

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.bun" ]; then
    export PATH="$HOME/.bun/bin:$PATH"
fi

if [ -d "$HOME/.opam" ]; then
    . $HOME/.opam/opam-init/init.sh
fi

if [ -d "/usr/local/go" ]; then
    export PATH="/usr/local/go/bin:$PATH"
fi
