###########################################################
# ZSH Config
###########################################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/Workspace/my_tools/powerlevel9k/powerlevel9k.zsh-theme

export UPDATE_ZSH_DAYS=7
DISABLE_UNTRACKED_FILES_DIRTY="true" # Will run much faster for large repos
plugins=(
  osx
  git
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)


###########################################################
# General
###########################################################

# Export brew path
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
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

# Python
export PATH="$HOME/Library/Python/3.7/bin:$PATH"

# NVM for Node.js
source ~/.nvm/nvm.sh

# Android SDK/NDK
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="$HOME/Workspace/android/android-sdk"
export ANDROID_SDK_ROOT="$HOME/Workspace/android/android-sdk"
export PATH="$HOME/Workspace/android/android-sdk/platform-tools:$HOME/Workspace/android/android-sdk/tools:$PATH"

# Flutter
export PATH="$HOME/Workspace/Frameworks/flutter/bin:$PATH"
export ENABLE_FLUTTER_DESKTOP=true

# git-subrepo
source $HOME/Workspace/open_source/apps/git-subrepo/.rc

# Godot
export CPP_BINDINGS="$HOME/Workspace/godot/repo/cpp"
export GODOT_HEADERS="$HOME/Workspace/godot/repo/cpp/godot_headers"

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh
