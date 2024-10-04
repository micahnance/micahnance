# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
alias zrc="vim ~/.zshrc"
alias erc="vim ~/.zshrc && source ~/.zshrc"

#PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# Android
export ANDROID_HOME=/Users/micahnance/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/micahnance/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/micahnance/.android/avd

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
PATH="/usr/local/bin:$PATH"

#task list
alias tls="task list"

#general
alias cls="clear && pwd && ls"
alias ll='ls -1'
alias zoom="open /Users/micah.nance/Documents/Zoom"
alias hist="history | tail -n 18"

#Android Devices
alias adb_install_all="adb devices | tail -n +2 | cut -sf 1 | xargs -I {} adb -s {} install -r $1"

#git
alias gbh="git branch"
alias gca="git commit --amend"
alias gco="git checkout"
alias gda="git checkout -- ."
alias gst="clear && git status && git branch | less -F"
alias gsu="git submodule update --recursive"
alias grh="git reset --hard"
alias ghr="git reset --hard"
#counterpart to this is "git update-ref refs/stale/my-branch-name sha-of-branch-head"
alias gstale="git show-ref | grep \"stale\""

