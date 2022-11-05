# Aliases for NuShell

alias zshrc = vsc ~/.zshrc
alias s = sudo
alias apt = sudo apt-get
alias neo = neofetch

# command line
alias ll = ls -a -l
alias cls = clear
alias cdc = cd /mnt/c

# vim
alias v = vim

# npm
alias ncls = npm run clean:all

# yarn 
alias y = yarn
alias yi = yarn install
alias ys = yarn start
alias yb = yarn build
# special for RC
alias ysw = yarn start:webinar

# git
# alias gsb = git branch -a | grep

# 1Password
# alias 1pin = "OP_CLOUD_ACCOUNT = 'my' source ~/Desktop/scripts/op_session.sh signin"

# rc electron
alias inspectrc = /Applications/RingCentral.app/Contents/MacOS/RingCentral --inspect

# switch jdk version
alias jdk8 = export JAVA_HOME = $JAVA_8_HOME
alias jdk16 = export JAVA_HOME = $JAVA_16_HOME

# pnpm
alias pp = pnpm
alias ppi = pnpm install
alias ppa = pnpm add
alias ppr = pnpm remove
alias pps = pnpm start
alias ppt = pnpm test
alias ppb = pnpm build

# whistle
alias ws = whistle

# ni
alias nrs = nr start
alias nrc = nr commits

# rm -rf
alias rrf = rm -rf

# 1Password CLI
# export OP_SESSION_my = "XKYjodM6nJTi4IBkwxxhdg2UB7Uv668TLnqwJ2ZS_UI"
# eval $(1p signin)

# deepl docker
alias dplr = docker run -itd -p 8080:80 zu1k/deepl

# alias for https://github.com/tj/n
alias nj = /usr/local/bin/n

# vscode
alias vsc = code .