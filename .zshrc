# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export SPARK=/Users/kathrynsiegel/Development/spark
export GOPATH=/Users/kathrynsiegel/Development/go
export PATH=/usr/local/sbin:/usr/local/bin:$PATH:$GOPATH/bin

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias athena="ssh -X ksiegel@athena.dialup.mit.edu"
alias db="ssh ksiegel@vise3.csail.mit.edu"
alias 824hw="cd; cd Dropbox\ \(Personal\)/6.824/hw"
alias aws="ssh -i ~/.ssh/amazon.pem ubuntu@52.4.152.184"
alias hkn="ssh -i ~/.ssh/hknhours.pem ubuntu@52.20.174.131"
alias tensorflow="ssh -i ~/.ssh/tensorflow.pem ubuntu@54.85.212.251"
alias neural-style="ssh -i ~/.ssh/neural-style-web.pem ubuntu@52.90.219.55"
alias wahoo="ssh -i ~/.ssh/wahooml.pem ubuntu@52.87.248.97"
alias roomres="ssh -i ~/.ssh/roomres.pem ubuntu@54.152.120.248"
alias goroot="cd /Users/kathrynsiegel/Development/go"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git docker brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# export PATH="/Users/kathrynsiegel/Library/Enthought/Canopy_64bit/User/bin:/Users/kathrynsiegel/pebble-dev/PebbleSDK-2.0.0/bin:/opt/local/bin:/opt/local/sbin:/Users/kathrynsiegel/.rvm/gems/ruby-2.0.0-p247/bin:/Users/kathrynsiegel/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/kathrynsiegel/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/kathrynsiegel/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

### kerberos

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Users/kathrynsiegel/Development/spark/bin:$PATH"
