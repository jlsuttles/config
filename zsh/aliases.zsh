# My aliases

# Tmux aliases

alias ta="tmux attach-session -t"
alias tn="tmux new-session -s"
alias tl="tmux list-sessions"

# my ip

alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"

# ctags

alias tag="ctags -R config -R app -R lib -R spec"
alias tag!="ctags -R ."

# mvim

alias m="mvim"
alias tabe="mvim"

# git

alias git="hub"

alias gl="git log"
alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gacm="git add -A; git commit -m"
alias gpull="git pull"
alias gpush="git push"
alias gpp="git pull && git push"

alias gpushp="git pull && git push && git push production master:master"
alias gpushs="git pull && git push && git push staging develop:master"

# budler

alias be="bundle exec"

# rspec

alias spec="bundle exec rspec spec --color --format doc"

# rails

alias tfld="tail -f log/development.log"

# heroky

alias heroky="heroku"
alias h="heroku"
alias hl="heroku logs --tail"
alias hla="heroku logs --tail --app"
alias hr="heroku run"
alias hrc="heroku run console"
alias hrca="heroku run console --app"
alias hrrdbm="heroku run rake db:migrate"
alias hrrdbma="heroku run rake db:migrate --app"

# postgres stop/start

alias pgstart="launchctl load -F ~/Library/LaunchAgents/org.postgresql.postgres.plist"
alias pgstop="launchctl unload ~/Library/LaunchAgents/org.postgresql.postgres.plist"

alias pg9start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg9stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# mysql start/stop

alias mysqlstart="launchctl load -F ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysqlstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"

# mongodb start

alias mongostart="launchctl load -F ~/Library/LaunchAgents/org.mongodb.mongod.plist"
alias mongostop="launchctl unload ~/Library/LaunchAgents/org.mongodb.mongod.plist"

# redis and resque start

alias redisstart='redis-server > ~/redis.log &'
alias resquestart='QUEUE=* bundle exec rake resque:work'

# easy tether sucks

alias easyoff='sudo kextunload -v /System/Library/Extensions/EasyTetherUSBEthernet.kext'

# reloads passenger and pow
function reload! () {
  touch tmp/restart.txt
}

# better than rm -rf
function trash () {
  mv $* ~/.Trash
}

# cd to the default working directory set by current_working_project
function cdefault {
  export wdir=`cat $HOME/bin/config/current_project_path`
  cd $wdir
}

function chpwd () {
  if [ -f ./.zshrc ]; then
    source ./.zshrc
  fi
}

function current_working_project {
  pwd > ~/bin/config/current_project_path
}
cdefault
chpwd

function internet {
  # count 3 packets
  # timeout 3 seconds
  # /dev/null unix devices that doesn't go anywhere
  # 1 is stdout, 2 is stderr, 2 follow 1
  if (ping -c 3 -t 3 google.com > /dev/null 2>&1)
  then
    echo 'yep'
  else
    echo 'nope'
  fi
}
