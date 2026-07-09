autoload -Uz compinit
compinit -d ~/.zcompdump

source ~/.antidote/antidote.zsh

antidote load ~/.zsh_plugins.txt


# Completion settings
zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' widget-style menu-select


# Starship
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"


# Aliases
alias zshconfig="nvim ~/.zshrc"
alias gitconfig="nvim ~/.gitconfig"

alias pn="pnpm"
alias c="clear"
alias h="history"
alias zsh="source ~/.zshrc"

alias syncdotfiles="bash ~/.dotfiles/.bin/sync-dotfiles"

alias vpnup="sudo systemctl start wg-quick@wg0"
alias vpndown="sudo systemctl stop wg-quick@wg0"
alias vpnstatus="sudo wg show"

# Omarchy arch
# alias zed="zeditor"

# Fedora: Force zsh to ignore all system lookups and run the exact binary
alias zed="command \$HOME/.local/bin/zed"

alias ip_json="curl ifconfig.co/json"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac


# Android SDK
export ANDROID_HOME="$HOME/Android/Sdk"
export JAVA_HOME="/usr/lib/jvm/java-21-temurin-jdk"

export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"


# Local binaries
export PATH="$PATH:$HOME/.local/bin"


# Opencode
export PATH="$HOME/.opencode/bin:$PATH"

# History
unsetopt SHARE_HISTORY
unsetopt INC_APPEND_HISTORY
unsetopt INC_APPEND_HISTORY_TIME

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE


# Editor
export EDITOR="nvim"


# z 
eval "$(zoxide init zsh)" 

# Copy current working directory
alias copypath='pwd | wl-copy'

# Copy file contents
copyfile() {
    [[ -f "$1" ]] || {
        echo "Usage: copyfile <file>"
        return 1
    }
    wl-copy < "$1"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
