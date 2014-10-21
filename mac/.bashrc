# .bashrc

if shopt -q login_shell
then
  test -e .bash_prompt && . .bash_prompt
  test -e .bash_aliases && . .bash_aliases
fi

# Source global definitions

set -o vi
export EDITOR=vim
export LSCOLORS='fxgxcxdxDxegedabagacad'

umask 022

# User specific aliases and functions

PATH=$PATH:$HOME/.gem/ruby/1.8/bin:$HOME/.rvm/bin # Add RVM to PATH for scripting
