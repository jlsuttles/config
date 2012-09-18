function add() {
  export PATH=$1:$PATH
}

export HOME="/Users/jlsuttles"

add /usr/local/bin
add /usr/local/sbin
add /usr/local/share/npm/bin

add $HOME/.rbenv/shims
add /usr/local/Cellar/rbenv/0.3.0/bin
