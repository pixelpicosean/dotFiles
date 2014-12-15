export PATH=/usr/local/bin:$PATH

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# # ~/.extra can be used for settings you don’t want to commit
 for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
   [ -r "$file" ] && source "$file"
done
unset file

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Install NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

# Love2D engine
alias love="/Applications/love.app/Contents/MacOS/love"

# haxe
export HAXE_STD_PATH="/usr/local/lib/haxe/std"
