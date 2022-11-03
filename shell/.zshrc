# ! Replace {userName} with local user
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/{userName}/.oh-my-zsh"

# z.lua
eval "$(lua ~/Desktop/workspace/repos/z.lua/z.lua  --init zsh once enhanced)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""
# theme pure
autoload -U promptinit; promptinit
prompt pure

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
	git
	vscode
	zsh-syntax-highlighting
	zsh-autosuggestions
	yarn
	sudo
	colorize
)

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

# Java
# JDK 16
JAVA_16_HOME="/Library/Java/JavaVirtualMachines/jdk-16.0.1.jdk/Contents/Home"
# JDK 8
JAVA_8_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

export JAVA_HOME=$JAVA_16_HOME
export PATH=$JAVA_HOME/bin:$PATH:.
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshrc="vsc ~/.zshrc"
alias s="sudo"
alias apt="sudo apt-get"
alias sz="source ~/.zshrc"
alias neo="neofetch"

# command line
alias ll="ls -alh"
alias cls="clear"
alias cdc="cd /mnt/c"

# vim
alias v="vim"

# z.lua
alias zz='z -c'      # restrict matches to subdirs of $PWD
alias zi='z -i'      # cd with interactive selection
alias zf='z -I'      # use fzf to select in multiple matches
alias zb='z -b'      # quickly cd to the parent directory

# npm
alias ncls='npm run clean:all'

# yarn 
alias y='yarn'
alias yi='yarn install'
alias ys='yarn start'
alias yb='yarn build'
# special for RC
alias ysw='yarn start:webinar'

# git
alias gsb='git branch -a | grep'

# 1Password
alias 1p='OP_CLOUD_ACCOUNT="my" source ~/Desktop/scripts/op_session.sh'
alias 1pin='OP_CLOUD_ACCOUNT="my" source ~/Desktop/scripts/op_session.sh signin'

# vpn
alias vpn='source ~/Desktop/scripts/openfortivpn.sh'

# rc electron
alias inspectrc='/Applications/RingCentral.app/Contents/MacOS/RingCentral --inspect'

# switch jdk version
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk16='export JAVA_HOME=$JAVA_16_HOME'

# pnpm
alias pp='pnpm'
alias ppi='pnpm install'
alias ppa='pnpm add'
alias ppr='pnpm remove'
alias pps='pnpm start'
alias ppt='pnpm test'
alias ppb='pnpm build'

# whistle
alias ws='whistle'

# ni
alias nrs='nr start'
alias nrc='nr commits'

# rm -rf
alias rrf='rm -rf'

# 1Password CLI
# export OP_SESSION_my="XKYjodM6nJTi4IBkwxxhdg2UB7Uv668TLnqwJ2ZS_UI"
# eval $(1p signin)

# deepl docker
alias dplr='docker run -itd -p 8080:80 zu1k/deepl'

# 打开命令行 todo 用指纹解锁
# sudo sed -i ".bak" '2s/^/auth       sufficient     pam_tid.so\'$'\n/g' /etc/pam.d/sudo
export PATH="$HOME/.jenv/bin:$PATH"

# brew
# export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
eval "$(jenv init -)"
eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/Users/{userName}/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
# bun completions
[ -s "/Users/{userName}/.bun/_bun" ] && source "/Users/{userName}/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/{userName}/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Rust
export RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup

