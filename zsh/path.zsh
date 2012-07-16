function add() {
  export PATH=$1:$PATH
}

export HOME="/Users/jlsuttles"

add /usr/local/bin
add /usr/local/sbin
# rbenv
add $HOME/.rbenv/shims
add $HOME/.rbenv/bin
