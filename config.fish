set -x GOPATH $GOPATH $HOME/Documents/src/go
set -x PATH $PATH $GOPATH/bin
set -x PATH /usr/local/bin $PATH
set -x PIP_REQUIRE_VIRTUALENV true

alias rdss="find . -name '*.DS_Store' -type f -ls -delete"
alias where=which
