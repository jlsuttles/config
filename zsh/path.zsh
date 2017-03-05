function add() {
  export PATH=$1:$PATH
}

export HOME="/Users/jlsuttles"

add $HOME/bin
add $HOME/bin/terraform_0
add /usr/local/bin
add /usr/local/sbin
add /usr/local/share/npm/bin

add $HOME/.rbenv/shims
add /usr/local/Cellar/rbenv/0.3.0/bin

add $GOROOT/bin
add $GOPATH/bin
# added because brew install go suggested it
add /usr/local/opt/go/libexec/bin

add /usr/local/heroku/bin
