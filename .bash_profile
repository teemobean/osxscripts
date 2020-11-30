# paths
export PATH=/usr/local/bin:$PATH:~/src/osx/osxscripts.git/scripts
export EDITOR='mvim -f --nomru'

# Go stuff
# export GOPATH=$HOME/src/go
# export PATH=$PATH:$GOPATH

# Python stuff
# export PIP_REQUIRE_VIRTUALENV=true
# gpip() {
#   PIP_REQUIRE_VIRTUALENV="" pip "$@"
# }
# export WORKON_HOME=$HOME/src/python/Virtualenvs
# export PROJECT_HOME=$HOME/src/python
# source /usr/local/bin/virtualenvwrapper.sh

# aliases
alias u="cd .."
alias l="ls -lG"
alias d="ls -lG"
alias ll="ls -lG"
alias lsa="ls -aG"
alias ls="ls -G"
alias e=vim
alias ee=vimr
alias where=which
alias rdss="find . -name '*.DS_Store' -type f -ls -delete"
alias vpn="stoken | tr -d ''\n'' | pbcopy; scutil --nc start GoDaddy --user tng"

# builds
alias gsj="./gradlew clean build shadowJar"

# You must ru both of these to get the photos and video dates to match
alias fdp="~/Downloads/Image-ExifTool-10.47/exiftool '-MDItemFSCreationDate<CreateDate' '-filemodifydate<CreateDate'"
alias fdv="~/Downloads/Image-ExifTool-10.47/exiftool '-MDItemFSCreationDate<CreationDate' '-filemodifydate<CreationDate'"
alias ddp="~/Downloads/Image-ExifTool-10.47/exiftool -time:all -a -G0:1 -s"

#$WHITE\W $LIGHT_GRAY\$(git_user_name) $GREEN\$(parse_git_branch)$BLUE\

# Prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function git_user_name {
  if [ -n "$(parse_git_branch)" ]; then
    git config user.name
  fi
}

function display_git {
  if [ -n "$(parse_git_branch)" ]; then
    echo "$(git_user_name) $(parse_git_branch) "
  fi
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='🔥  \[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$WHITE[\W] $GREEN\$(display_git)\
$LIGHT_GRAY\$ "
PS2='> '
PS4='+ '
}
PROMPT_COMMAND=proml
#export PS1="[\[\e[0;31m\]\w\[\e[m\]] $ "

export NVM_DIR="/Users/tim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"
