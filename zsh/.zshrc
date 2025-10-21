# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


plugins=(
    #timer
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    fast-syntax-highlighting 
    zsh-autocomplete
    nvm
    npm
    bun
    copyfile
    copypath
    # pip
    react-native
    # snap
    sudo
    vscode
    # xcode
    z
    # web-search
    starship
    pnpm-shell-completion # https://github.com/g-plane/pnpm-shell-completion
)

# timer plugin
# TIMER_FORMAT='%d' 

# zsh-autocomplete (fix me)
# bindkey -M menuselect '\r' .accept-line

source $ZSH/oh-my-zsh.sh

zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' widget-style menu-select

# User configuration


# starsh.io prompt (we dont need it cause we have it in the plugins)
# eval "$(starship init zsh)"

# nvm (we dont need it cause we have it in the plugins)
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bun completions (we dont need it cause we have it in the plugins)
# [ -s "/home/adelfael/.bun/_bun" ] && source "/home/adelfael/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"



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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias gitconfig="code ~/.gitconfig"
alias pn="pnpm"
alias c="clear"
alias h="history"
alias zsh="source ~/.zshrc"
alias syncdotfiles="bash ~/.dotfiles/.bin/sync-dotfiles"




# pnpm
export PNPM_HOME="/home/adelfael/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end




export STARSHIP_CONFIG=~/starship.toml



# # this is for linux  -- Read the Node.js version from .nvmrc file
# nodeVersion=$(cat .nvmrc 2>/dev/null)

# if [[ -n $nodeVersion ]]; then
#     # Activate specified Node.js version
#     nvm use "$nodeVersion"
#     echo "Node.js version $nodeVersion has been activated."
# else
#     # Check if there is a WiFi connection
#     if ping -q -c 1 -W 1 google.com >/dev/null; then
#         # Get the latest available Node.js version
#         latestVersion=$(nvm ls-remote | grep -Eo 'v[0-9]+\.[0-9]+\.[0-9]+' | sort -V | tail -n 1)

#         if [[ -n $latestVersion ]]; then
#             currentVersion=$(nvm current)

#             if [[ "$currentVersion" == "none" ]]; then
#                 nvm use "$latestVersion" > /dev/null
#                 latestVersionWithoutV="${latestVersion#v}"
#                 echo "Using the latest Node.js version ($latestVersionWithoutV)."
#             elif [[ -n $currentVersion ]]; then
#                 latestVersionWithoutV="${latestVersion#v}"

#                 if [[ "$currentVersion" == "$latestVersionWithoutV" ]]; then
#                     echo "You are already using the latest Node.js version ($currentVersion)."
#                 else
#                     echo "Current Node.js version: $currentVersion"
#                     echo "Latest Node.js version: $latestVersionWithoutV"
#                     echo "To install and use the latest version, run:"
#                     echo "nvm install $latestVersionWithoutV"
#                     echo "nvm use $latestVersionWithoutV"
#                 fi
#             else
#                 echo "Unable to determine the current Node.js version."
#             fi
#         else
#             echo "No available Node.js (.nvmrc) versions found."
#         fi
#     else
#         echo "No WiFi connection. Using default Node.js version."
#         nvm use default
#         # Add your logic here to use a default Node.js version or take appropriate action
#     fi
# fi

nodeVersion=$(cat .nvmrc 2>/dev/null)

if [[ -n $nodeVersion ]]; then
  nvm use "$nodeVersion"
  echo "Node.js version $nodeVersion has been activated."
else
  nvm use default > /dev/null 2>&1
fi

PATH=~/.console-ninja/.bin:$PATH



export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

export PATH=$PATH:~/.local/bin


# make it a script and put it under ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"
# or this 
# cursor() {
#   local APPIMAGE_PATH="$HOME/Applications/Cursor/cursor.AppImage"  # change this to your actual AppImage path

#   if [[ ! -f "$APPIMAGE_PATH" ]]; then
#     echo "Error: Cursor AppImage not found at $APPIMAGE_PATH" >&2
#     return 1
#   fi

#   "$APPIMAGE_PATH" "$@" &> /dev/null &
# }


export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"
# export PATH="$JAVA_HOME/bin:$PATH"


# Disable shared history
unsetopt SHARE_HISTORY
unsetopt INC_APPEND_HISTORY
unsetopt INC_APPEND_HISTORY_TIME

# Optional: enable history per session
setopt HIST_IGNORE_DUPS  # Ignore duplicates
setopt HIST_IGNORE_SPACE # Ignore commands starting with space


export EDITOR="code --goto"

