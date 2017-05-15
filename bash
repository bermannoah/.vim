eval "$(rbenv init -)"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

PROMPT_COLOR='\e[00m\e[38;05;166m'
export PS1='\['$PROMPT_COLOR'\][\h]: \w\$\[\e[0m\] '
export EDITOR='atom -w'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

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

alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias topForever='top -l 9999999 -s 10 -o cpu'
my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }

HOMEBREW_NO_ANALYTICS=1

rails_new() {
  rails new "$@" -d postgresql --skip-test-unit --skip-spring -T
}
