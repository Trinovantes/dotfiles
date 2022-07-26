#------------------------------------------------------------------------------
# Custom variables
#------------------------------------------------------------------------------

export SVN_EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

#------------------------------------------------------------------------------
# PATH
#------------------------------------------------------------------------------

if [ -d "/home/stephen/.local/bin" ]; then
    export PATH="/home/stephen/.local/bin:$PATH"
fi

if [ -d "$(yarn global bin)" ]; then
    export PATH="$(yarn global bin):$PATH"
fi

if [ -d "/home/stephen/.deno" ]; then
    export PATH="/home/stephen/.deno/bin:$PATH"
fi

if [ -d "/home/stephen/.cargo/bin" ]; then
    export PATH="/home/stephen/.cargo/bin:$PATH"
fi

if [ -d "$(go env GOPATH)" ]; then
    export PATH="$(go env GOPATH)/bin:$PATH"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then
    . '/opt/google-cloud-sdk/path.bash.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then
    . '/opt/google-cloud-sdk/completion.bash.inc';
fi
