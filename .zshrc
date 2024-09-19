export LANG=en_US.UTF-8

# PATHS 
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:/opt/metasploit-framework/bin/"
export PATH="$PATH:/Users/dude/.dotnet/tools"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# RBENV
eval "$(rbenv init -)"

# Set up fpath for Zsh installed via Homebrew 
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES
alias ll="ls -lah"
alias la="ls -A"
alias mkdir="mkdir -pv"
alias gst="git status"
alias gl="git log --oneline --graph --decorate --all"
alias gp="git push"
alias gpl="git pull"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gfp="git fetch --prune"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/Users/dude/.bun/_bun" ] && source "/Users/dude/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
