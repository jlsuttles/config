# My aliases

# my ip

alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 |
   cut -d\   -f2"

# ctags

alias tag="ctags -R config -R app -R lib -R script -R spec"
alias tag!="ctags -R ."

# mvim

alias m="mvim"
alias tabe="mvim"

# git

alias git="hub"

alias ga="git add"
alias gacm="git add; git commit -m"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gcpc="git cherrypick"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log"
alias gpull="git pull"
alias gpush="git push"
alias grc="git rebase --continue"
alias gs="git status"

# heorku

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

alias pgstart="pg_ctl -D /usr/local/var/postgres -l logfile start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgrebuild="pgstop; pgstart; rake db:drop db:create db:migrate db:seed"

# mysql start/stop

alias mysqlstart="mysql.server start"
alias mysqlstop="mysql.server stop"

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

function current_working_project {
  pwd > ~/bin/config/current_project_path
}
cdefault

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
