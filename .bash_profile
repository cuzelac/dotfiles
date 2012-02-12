set -o vi

export PS1='\u@\h:[\w]$ '
export EDITOR=vi
export LSCOLORS='fxgxcxdxDxegedabagacad'

#alias irc='ssh harlequin -t screen -dr irc'
alias irc='ssh goat.scooterfarm.com -t screen -dr irc'
alias ls='ls -G'

alias hep='ssh -p 222 cuz@hep.cat'

alias sshvm='ssh -A 192.168.64.129'

keychain ~/.ssh/id_dsa > /dev/null 2>&1

if [ -f ~/.keychain/`hostname`-sh ]
then
  . ~/.keychain/`hostname`-sh
fi

##
# Your previous /Users/cuzelac/.bash_profile file was backed up as /Users/cuzelac/.bash_profile.macports-saved_2010-02-26_at_18:21:17
##

# MacPorts Installer addition on 2010-02-26_at_18:21:17: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/Developer/usr/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

