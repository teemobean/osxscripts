# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH=/Users/tim/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerline"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    gradle
    vi-mode
)

source $ZSH/oh-my-zsh.sh

prompt_context() {
    local seq
    seq='%(!.{%F{yellow}%}.)%n'
    if [[ "$USER" != "$DEFAULT_USER" ]]; then
        seq="$seq"
    fi
    prompt_segment black default $seq
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=/usr/local/bin:$PATH:~/src/osx/osxscripts.git/scripts
export PATH="$(brew --prefix)/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/$(ruby -v | cut -f 2 -d ' ' | cut -d '.' -f 1-2).0/bin:$PATH"
export EDITOR='mvim -f --nomru'

# aliases
alias u="cd .."
alias l="ls -lG"
alias d="ls -lG"
alias ll="ls -lG"
alias lsa="ls -aG"
alias ls="ls -G"
alias e=vim
alias ee=mvim
alias where=which
alias rdss="find . -name '*.DS_Store' -type f -ls -delete"
alias st="stoken | tail -n 1 | tr -d '\n' | pbcopy"
alias cd-=popd

# builds
alias jb="./gradlew clean build shadowJar"

# git
alias c="git checkout"
alias gr="git rebase master"
alias com="git commit -m "

# GoDaddy
alias vpn="scutil --nc start GoDaddy --user tng; stoken | tr -d '\n' | pbcopy"
alias otp='~/src/osx/osxscript.git/apps/otpcli okta -n; otpcli okta | pbcopy'

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Ruby
# eval "$(rbenv init -)"

VIRTUAL_ENV_DISABLE_PROMPT=1
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery dir vcs virtualenv nodeenv newline os_icon user)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
source ~/src/osx/powerlevel9k.git/powerlevel9k.zsh-theme
