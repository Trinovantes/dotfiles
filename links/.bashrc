#------------------------------------------------------------------------------
# Custom commands
#------------------------------------------------------------------------------

# Ensure gpg-agent knows which tty to prompt on
export GPG_TTY=$(tty)

# mkdir and cd into new directory
mcd () { mkdir -p "$@" && cd "$@"; }

# Set terminal title
PROMPT_COMMAND='echo -en "\033]0; $(whoami)@$(hostname) $(pwd) \a"'

alias 'diskspace'='du -h --separate-dirs | sort --human-numeric-sort --reverse | more'
alias 'path'='echo -e ${PATH//:/\\n}'
alias 'chmod-value'='stat --format "%a"'
alias 'list-users'='cut --delimiter=":" --fields=1 /etc/passwd'
alias 'clear-mail'='cp /dev/null /var/mail/root'
alias 'updeps'='yarn upgrade && git add yarn.lock && git commit -m "Upgrade dependencies"'

if [[ `uname` == 'Linux' ]]; then
    alias 'makefile-init'='echo '"'"'print-%: ; @echo $*=$($*)'"'"' >> Makefile'
    alias 'fg-record'='perf record -g -F 1000 --'
    alias 'fg-svg'='perf script | /opt/flamegraph/stackcollapse-perf.pl | c++filt | /opt/flamegraph/flamegraph.pl > perf.svg'
fi

#------------------------------------------------------------------------------
# Override System commands
#------------------------------------------------------------------------------

alias 'cd..'='cd ..'
alias 'grep'='grep --line-number --color=auto'

# Enable coloured ls if colour is supported
( ls --color &> /dev/null ) && export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:'

# Platform specific changes
if   [[ `uname` == 'Linux' ]]; then # Ubuntu
    # Case sensitive sort
    alias ls='LC_COLLATE=en_US ls -l -p -h --color --group-directories-first'
elif [[ `uname` == 'Darwin' ]]; then # OSX
    alias ls='                 ls -l -p -h'
else
    alias ls='LC_COLLATE=en_US ls -l -p -h --color --group-directories-first'
fi

#------------------------------------------------------------------------------
# Git and PS1
#  
#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  Originally by Mike Stewart
#  http://mediadoneright.com/content/ultimate-git-ps1-bash-prompt
#------------------------------------------------------------------------------

source ~/.bash-colors.sh
source ~/.git-completion.sh
source ~/.git-prompt.sh

if echo "$-" | grep i > /dev/null; then
    # Flags
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1

    # Various variables you might want for your PS1 prompt instead
    User="\u"
    Host=$(hostname)
    Time12h="\T"
    Time12a="\@"
    PathShort="\w"
    PathFull="\W"
    NewLine="\n"
    Jobs="\j"

    __git_prettify()
    {
        git branch &> /dev/null

        if [ $? -eq 0 ]; then
            echo $(__git_ps1 "(%s)")
        fi
    }

PS1="\n"\
"${On_Black}  "\
"${BYellow}${Time12a}"\
"${On_Black}  "\
"${On_Blue} ${BCyan}${User}${BBlue}@${BCyan}${Host} "\
"${On_Black}  "\
"${On_Green} ${BWhite}${PathShort} "\
"${On_Black}${BCyan}"$'  $(__git_prettify)  '\
"${Reset_BG}${Reset}"$'\n$ '

    bash ~/.screenfetch.sh
fi
