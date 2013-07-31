# .bashrc

test -e .bash_prompt && . .bash_prompt

# Source global definitions

set -o vi
export EDITOR=vim
export LSCOLORS='fxgxcxdxDxegedabagacad'


alias irc='ssh goat.scooterfarm.com -t screen -dr irc'
alias ls='ls -G'
alias irc='ssh -t cuzelac@ec2.allecto.org screen -dr irc'
alias ec2='ssh cuzelac@ec2.allecto.org'
alias utcdate='TZ=UTC date'
alias vir='vim -R'
alias grep='grep --color'

# User specific aliases and functions

PATH=$PATH:$HOME/.gem/ruby/1.8/bin:$HOME/.rvm/bin # Add RVM to PATH for scripting
