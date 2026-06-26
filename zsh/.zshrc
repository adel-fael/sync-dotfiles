# Path to oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Theme
# ZSH_THEME="robbyrussell"


# Plugins
plugins=(
    git
    zsh-autosuggestions
    fast-syntax-highlighting
    z
    sudo
    copypath
    copyfile
    zsh-autocomplete

    # Heavy plugins disabled for faster startup:
    # nvm
    # npm
    # bun
    # react-native
    # vscode
    # starship

    # Duplicate syntax highlighter:
    # zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


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

alias zed="zeditor"


# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac


# Android SDK
export ANDROID_HOME="$HOME/Android/Sdk"

export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"


# Local binaries
export PATH="$PATH:$HOME/.local/bin"


# Console Ninja
export PATH="$HOME/.console-ninja/.bin:$PATH"


# Opencode
export PATH="$HOME/.opencode/bin:$PATH"

# Lazy load nvm + auto use .nvmrc
export NVM_DIR="$HOME/.nvm"

nvm() {
    unset -f nvm

    [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

    if [ -f ".nvmrc" ]; then
        nvm use
    fi

    nvm "$@"
}

# History
unsetopt SHARE_HISTORY
unsetopt INC_APPEND_HISTORY
unsetopt INC_APPEND_HISTORY_TIME

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE


# Editor
export EDITOR="nvim"