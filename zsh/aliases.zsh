# My aliases

# my ip

alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"

# ctags

alias tag="ctags -R config -R app -R lib -R script -R spec"
alias tag!="ctags -R ."

# mvim

alias m="mvim"
alias tabe="mvim"

# git

alias git="hub"

alias ga="git add"
alias gacm="git add .; git commit -m"
alias gb="git branch"
alias gbr="git branch -r"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcod="git checkout develop"
alias gcom="git checkout master"
alias gcp="git cherrypick"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log"
alias gpp="git pull && git push"
alias gpull="git pull"
alias gpush="git push"
alias gpushp="git pull && git push && git push production master:master"
alias gpushs="git pull && git push && git push staging develop:master"
alias grs="git reset"
alias grbc="git rebase --continue"
alias grbi="git rebase -i"
alias gs="git status"

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

# mysql start/stop

alias mysqlstart="launchctl load -F ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysqlstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"

# mongodb start

alias mongostart="launchctl load -F ~/Library/LaunchAgents/org.mongodb.mongod.plist"
alias mongostop="launchctl unload ~/Library/LaunchAgents/org.mongodb.mongod.plist"

# redis and resque start

alias redisstart='redis-server > ~/redis.log &'
alias resquestart='QUEUE=* rake resque:work'

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

function :w () {
  echo "Ugh. You're not in vim, and your shits all retarded"
}

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
