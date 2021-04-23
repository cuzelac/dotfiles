alias ec2='ssh cuzelac@ec2.allecto.org'
alias grep='grep --color'
alias ls='ls -G'
alias utcdate='TZ=UTC date'
alias vir='vim -R'
alias gotags='gotags  -f ./tags -R .'
alias fix-finder="bash -c 'rm ~/Library/Preferences/com.apple.finder.plist&&killall Finder'"

function rebundle() {
  if [[ -e ./.ruby-gemset ]]
  then
    gemset=$(cat .ruby-gemset)
    rvm gemset --force delete $gemset
    rvm gemset --force create $gemset
    gem install bundler
    bundle
  fi
}

# ssh agent loading adapted from 
# https://docs.github.com/en/github/authenticating-to-github/working-with-ssh-key-passphrases
ssh_agent_env=~/.ssh/agent.env

ssh_agent_load_env () { test -f "$ssh_agent_env" && . "$ssh_agent_env" >| /dev/null ; }

ssh_agent_start () {
  (umask 077; ssh-agent >| "$ssh_agent_env")
  . "$ssh_agent_env" >| /dev/null ; 
}

ssh_agent_load_or_start () {
  ssh_agent_load_env
  # ssh_agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
  ssh_agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)
  if [ ! "$SSH_AUTH_SOCK" ] || [ $ssh_agent_run_state = 2 ]; then
    ssh_agent_start
    ssh-add
  elif [ "$SSH_AUTH_SOCK" ] && [ $ssh_agent_run_state = 1 ]; then
    ssh-add
  fi
}
