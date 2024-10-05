#------------------------------------------------------------------------------
# Custom variables
#------------------------------------------------------------------------------

export SVN_EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
export VCPKG_ROOT=/home/stephen/vcpkg

#------------------------------------------------------------------------------
# PATH
#------------------------------------------------------------------------------

if [ -d "/home/stephen/.local/bin" ]; then
    export PATH="/home/stephen/.local/bin:$PATH"
fi

if [ -x "$(command -v yarn)" ] && [ -d "$(yarn global bin)" ]; then
    export PATH="$(yarn global bin):$PATH"
fi

if [ -d "/home/stephen/.deno" ]; then
    export PATH="/home/stephen/.deno/bin:$PATH"
fi

if [ -d "/home/stephen/.cargo/bin" ]; then
    export PATH="/home/stephen/.cargo/bin:$PATH"
fi

if [ -d "/usr/local/go" ]; then
    export PATH="/usr/local/go/bin:$PATH"
fi

