#------------------------------------------------------------------------------
# Private API keys and other passwords
#------------------------------------------------------------------------------

source ~/.private.sh
source ~/.profile

#------------------------------------------------------------------------------
# Custom commands
#------------------------------------------------------------------------------

# Ensure gpg-agent knows which tty to prompt on
export GPG_TTY=$(tty)

# mkdir and cd into new directory
mcd () { mkdir -p "$@" && cd "$@"; }

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

alias 'diskspace'='du -S | sort -n -r | more'
alias 'path'='echo -e ${PATH//:/\\n}'
alias 'fix'='$EDITOR $( git diff --name-only --diff-filter=U | xargs )'
alias 'chmod-value'='stat --format "%a"'
alias 'list-users'='cut -d: -f1 /etc/passwd'

if [[ `uname` == 'Linux' ]]; then
    alias 'gae-server'='dev_appserver.py --log_level debug .'
    alias 'gae-upload'='appcfg.py --oauth2 update .'
    alias 'clear-recent-files'='cat /dev/null > .local/share/recently-used.xbel'
    alias 'android'='~/bin/android/eclipse/eclipse'
    alias 'op'='xdg-open'
    alias 'texmaker'='~/bin/texmaker_linux32/texmaker'
    alias 'init-makefile'='echo '"'"'print-%: ; @echo $*=$($*)'"'"' >> Makefile'
    alias 'clean-python'='find "*.pyc" | xargs rm'
    alias 'astyle-java'='astyle --style=java --indent=spaces=4 --indent-cases --pad-oper --unpad-paren --pad-header'
fi

#------------------------------------------------------------------------------
# Override System commands
#------------------------------------------------------------------------------

alias 'cd..'='cd ..'
alias 'vi'='vim'
alias 'vim'='vim -O'
alias 'ssh'='ssh -Y'
alias 'ak'='ack-grep'
alias 'time'='/usr/bin/time -p'

# Enable coloured grep if colour is supported
( echo chk | grep --color=auto chk &> /dev/null ) && export GREP_OPTIONS="--color=auto"
alias grep='grep -n'

# Enable coloured ls if colour is supported
( ls --color &> /dev/null ) && export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:'

# Platform specific changes
if   [[ `uname` == 'Linux' ]]; then # e.g. Linux Mint
    # Case sensitive sort
    alias ls='LC_COLLATE=en_US ls --color -l -p -h -X --group-directories-first'
    alias find='find . -name'
elif [[ `uname` == 'Darwin' ]]; then # OSX
    alias ls='ls -l -p -h'
    alias find='mdfind -onlyin . -name'
elif [[ `uname` == 'AIX' ]]; then # AIX
    alias ls='ls -l -p'
fi

#------------------------------------------------------------------------------
# Git and PS1
#  
#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  Originally by Mike Stewart
#  http://mediadoneright.com/content/ultimate-git-ps1-bash-prompt
#------------------------------------------------------------------------------

source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.bash-colours.sh

if echo "$-" | grep i > /dev/null; then

    # Various variables you might want for your PS1 prompt instead
    User="\u"
    Time12h="\T"
    Time12a="\@"
    PathShort="\w"
    PathFull="\W"
    NewLine="\n"
    Jobs="\j"
    HOST=$(hostname)

    __git_prettify()
    {
        git branch &> /dev/null

        if [ $? -eq 0 ]; then
            echo '  '$(__git_ps1 "(%s)")
        fi
    }

    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1

PS1="\n"\
"${On_Black}${BYellow}  $Time12a  "\
"${On_Blue} ${BCyan}\u${BBlue}@${BCyan}${HOST} "\
"${On_Black}  "\
"${On_Green} ${BBlack}${PathShort} "\
"${On_Black}${BCyan}"'$(__git_prettify)'\
"${Reset_BG}${Reset}${NewLine}$ "\

    bash ~/.screenfetch.sh
fi
