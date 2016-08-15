# paths
export PATH=/usr/local/bin:$PATH:~/Documents/src/osxscripts.git/scripts
export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'

# Python stuff
export PIP_REQUIRE_VIRTUALENV=true
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# aliases
alias u="cd .."
alias l="ls -lG"
alias d="ls -lG"
alias ll="ls -lG"
alias lsa="ls -aG"
alias ls="ls -G"
alias ee=mvim
alias s=/usr/local/bin/screen

# Prompt
export PS1="[\[\e[0;31m\]\w\[\e[m\]] $ "

export NVM_DIR="/Users/tim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
