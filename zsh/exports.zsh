export PROJECTS=~/Projects
export CDPATH=$PROJECTS:~/ # autocd to projects and home

export CLICOLOR=1 # turns on colors
export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-256color

export GREP_COLOR='3;33'
export GREP_OPTIONS='--color=auto'

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"' # edit git commit messages (among other things) in vim

# add the MySQL library folder
# export DYLD_LIBRARY_PATH="/usr/local/Cellar/mysql/5.5.25a/lib"
