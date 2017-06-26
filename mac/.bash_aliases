alias ec2='ssh cuzelac@ec2.allecto.org'
alias grep='grep --color'
alias ls='ls -G'
alias utcdate='TZ=UTC date'
alias vir='vim -R'
alias gotags='gotags  -f ./tags -R .'

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
