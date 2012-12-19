autoload -U compinit && compinit
autoload -U zmv
autoload colors && colors

source ~/.zsh/exports.zsh
source ~/.zsh/path.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh 

source ~/.zsh/secrets.zsh

export SSH_ENV=$HOME/.ssh/environment

function start_agent() {
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > $SSH_ENV;
  chmod 600 $SSH_ENV;
  . $SSH_ENV;
  /usr/bin/ssh-add;
}

start_agent

ruby -v

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
