set -x GOPATH $GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH /usr/local/bin $PATH

alias rdss="find . -name '*.DS_Store' -type f -ls -delete"
alias where=which
