# The .bashrc file is executed when you run bash using an interactive shell
# (e.g., su, bash). The .bash_profile (or .profile) file is executed
# during a login shell (e.g., su -, bash --login).
 
#============================================================
# SOURCE FILES
 
# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
 
# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

# Enable git completion
if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# Colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#===============================================================
# ALIASES
#===============================================================

alias vi='vim'
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
 
alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias print='/usr/bin/lp -o nobanner -d $LPDEST' # Assumes LPDEST is defined (default printer)
alias pjet='enscript -h -G -fCourier9 -d $LPDEST' # Pretty-print using enscript
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'
 
alias mktar='tar -cvzf' # Compress and uncompress tar
alias untar='tar -xvzf'

alias lsofi='lsof -iTCP -sTCP:LISTEN -Pn'
 
# The 'ls' family (this assumes you use a recent GNU ls)
alias ll='ls -alGFh'
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al | more'   # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'
 
# If your version of 'ls' doesn't support --group-directories-first try this:
# function ll(){ ls -l "$@"| egrep "^d" ; ls -lXB "$@" 2&gt;&amp;-| \
#                egrep -v "^d|total "; }
 
# Tailoring 'less'
alias more='less'

#=====================================================================
# PATHS
#=====================================================================

export PATH="$PATH:~/bin

#=====================================================================
# FUNCTIONS
#=====================================================================

function tabname {
  echo -en "\033]2;$1\007"
}

function tabicon {
  echo -en "\033]1;$1\007"
}
