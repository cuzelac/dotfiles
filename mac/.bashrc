# .bashrc

. ~/.git-completion.sh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

# This puts your branch in your PS1 if you're in a git repo
PS1="---\$?\$(__git_ps1 \"\n   :: %s ::\")
\u@\h.\[\e[0;36m\]vm\[\e[0m\] \D{%s} [\w]
$ "

# this PS1 does the same git branch as above
# but also puts a blue '.vm' at the end of a hostname
#PS1="---\$?\$(__git_ps1 \"\n   :: %s ::\")
#\u@\h.\[\e[0;36m\]vm\[\e[0m\] \D{%s} [\w]
#$ "

# User specific aliases and functions

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
