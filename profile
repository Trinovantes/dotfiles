#------------------------------------------------------------------------------
# Custom variables
#------------------------------------------------------------------------------

export SVN_EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

export PADS_HOME="/home/stephen/bin/pads"
export SML="/home/stephen/bin/sml/bin/sml"
. $PADS_HOME/scripts/Q_DO_SETEV.sh &>> /dev/null

#------------------------------------------------------------------------------
# PATH
#------------------------------------------------------------------------------

export PATH="/home/stephen/bin/android/ndk:$PATH"               # Android NDK
export PATH="/home/stephen/bin/appengine:$PATH"                 # Google App Engine
export PATH="/home/stephen/bin/sml/bin:$PATH"                   # SML
export PATH="/home/stephen/.rvm/bin:$PATH"                      # Add RVM to PATH for scripting
export PATH="/usr/local/texlive/2014/bin/x86_64-linux:$PATH"    # Texlive

