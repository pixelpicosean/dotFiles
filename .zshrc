###########################################################
# ZSH Config
###########################################################

# Path to your oh-my-zsh installation.
export ZSH=/Users/sean/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"

# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=7
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true" # Will run much faster for large repos
# HIST_STAMPS="mm/dd/yyyy" # "mm/dd/yyyy" or "dd.mm.yyyy" or "yyyy-mm-dd"
plugins=(osx brew git zsh-autosuggestions)

###########################################################
# General
###########################################################

# Export brew path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

###########################################################
# Functions
###########################################################

# File size
alias fs="stat -f \"%z bytes\""

###########################################################
# Development
###########################################################

# NVM for Node.js
source ~/.nvm/nvm.sh

# Android SDK/NDK
export JAVA_HOME=$(/usr/libexec/java_home)

# Python 2.7 (brew)
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh
