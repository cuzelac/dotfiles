########################################################
# bootstrap Square bashrc; please don't change this bit.
########################################################
if [[ -f "$SQUARE_HOME/config_files/square/bashrc" ]]; then
  source $SQUARE_HOME/config_files/square/bashrc
fi
########################################################


###########################################
# Feel free to make your own changes below.
###########################################

# uncomment to automatically `bundle exec` common ruby commands
# if [[ -f "$SQUARE_HOME/config_files/square/bundler-exec.sh" ]]; then
#   source $SQUARE_HOME/config_files/square/bundler-exec.sh
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
