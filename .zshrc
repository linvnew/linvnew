# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/Administrator/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
  ZSH_THEME="avit"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="linvnew"
# ZSH_THEME="Bureau"
 POWERLINE_HIDE_USER_NAME="true"
 POWERLINE_HIDE_HOST_NAME="true"
 POWERLINE_DETECT_SSH="true"
 POWERLINE_GIT_CLEAN="✔"
 POWERLINE_GIT_DIRTY="✘"
 POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
 POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
 POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
 POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
 POWERLINE_GIT_RENAMED="➜"
#POWERLINE_GIT_UNMERGED="⎇"
 POWERLINE_GIT_UNMERGED="✪"


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
# 开启等待红点
COMPLETION_WAITING_DOTS="true"

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
plugins=(git autojump zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

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
#
# Set colors for man pages
export PAGER="/usr/bin/most -s"
#man() {
#  env \
#  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#  LESS_TERMCAP_md=$(printf "\e[1;31m") \
#  LESS_TERMCAP_me=$(printf "\e[0m") \
#  LESS_TERMCAP_se=$(printf "\e[0m") \
#  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#  LESS_TERMCAP_ue=$(printf "\e[0m") \
#  LESS_TERMCAP_us=$(printf "\e[1;32m") \
#  man "$@"
#}
