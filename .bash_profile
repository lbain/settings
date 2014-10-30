alias personal="cd /Users/lucy/Documents/code/personal/"
alias work="cd /Users/lucy/Documents/code/work/"

alias core="cd /Users/lucy/Documents/code/work/splitit-core"
alias crm="cd /Users/lucy/Documents/code/work/splitit-core-crm"
alias lm="cd /Users/lucy/Documents/code/work/lm-app"
alias robie="cd /Users/lucy/Documents/code/work/robie"
alias rbg="cd /Users/lucy/Documents/code/work/robie-gem"

alias start="mongod run --config /usr/local/etc/mongod.conf"
alias yoga="cd /Users/lucy/Documents/code/personal/yoga-timing/ && ruby training.rb"
alias hideDesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showDesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias g="git"
alias gb="git branch"
alias gs="git status"

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

source /Users/lucy/Documents/code/personal/settings/.profile
source /Users/lucy/Documents/code/personal/settings/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

HISTFILESIZE=1000000000 HISTSIZE=1000000