# .bashrc

. ~/.git-completion.sh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vim
export EDITOR=vim
export LSCOLORS='fxgxcxdxDxegedabagacad'

# This puts your branch in your PS1 if you're in a git repo
PS1="---\$?\$(__git_ps1 \"\n   :: %s ::\")
\u@\h.\[\e[0;36m\]vm\[\e[0m\] \D{%s} [\w]
$ "

# this PS1 does the same git branch as above
# but also puts a blue '.vm' at the end of a hostname
# use it as the default .bashrc for vms

#PS1="---\$?\$(__git_ps1 \"\n   :: %s ::\")
#\u@\h.\[\e[0;36m\]vm\[\e[0m\] \D{%s} [\w]
#$ "

alias irc='ssh goat.scooterfarm.com -t screen -dr irc'
alias ls='ls -G'
alias irc='ssh -t cuzelac@ec2.allecto.org screen -dr irc'
alias ec2='ssh cuzelac@ec2.allecto.org'
alias utcdate='TZ=UTC date'
alias vir='vim -R'
alias grep='grep --color'

# User specific aliases and functions

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
