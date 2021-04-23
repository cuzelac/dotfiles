export HOMEBREW_NO_ANALYTICS=1

if shopt -q login_shell
then
  test -e .bash_prompt && . .bash_prompt
  test -e .bash_aliases && . .bash_aliases
  test -e .ssh/environment && . .ssh/environment > /dev/null
  ssh_agent_load_or_start # defined in .bash_aliases
  shopt -s checkwinsize
fi

set -o vi
export EDITOR=vim
export LSCOLORS='fxgxcxdxDxegedabagacad'
umask 022

export GOROOT=/usr/local/opt/go/libexec

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
