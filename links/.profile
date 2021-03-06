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

# Rust Cargo
if [ -f '/home/stephen/.cargo/bin' ]; then
    export PATH="$PATH:/home/stephen/.cargo/bin"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then
    . '/opt/google-cloud-sdk/path.bash.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then
    . '/opt/google-cloud-sdk/completion.bash.inc';
fi

