set -x GOPATH $GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

alias rdss="find . -name '*.DS_Store' -type f -ls -delete"
alias where=which
