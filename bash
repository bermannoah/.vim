# Make everything pretty

PROMPT_COLOR='\e[00m\e[38;05;166m'
export PS1='\['$PROMPT_COLOR'\][\h]: \w\$\[\e[0m\] '
export EDITOR='atom -w'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Github shortcuts

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m'
alias gd='git diff'
alias gk='gitk --all&'
alias gx='gitx --all'
alias gpom='git push origin master'
alias gpum='git push upstream master'
alias gpo='git push origin'
alias gh='git hist'
alias irb='irb --simple-prompt'
alias gcs='git commit -S -m'

# Why Is It Doing Or Not Doing The Thing That It Does

alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias topForever='top -l 9999999 -s 10 -o cpu'
alias projects='cd Projects'
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

# misc

eval $(thefuck --alias)

source ~/.bash_profile

export GOPATH=/Users/noah/go/

HOMEBREW_NO_ANALYTICS=1

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

rails_new() {
  rails new "$@" -d postgresql --skip-test-unit --skip-spring -T
}
