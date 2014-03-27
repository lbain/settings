alias core="cd /Users/lucy/Documents/code/work/splitit-core"
alias start="mongod run --config /usr/local/etc/mongod.conf"
alias crm="cd /Users/lucy/Documents/code/work/splitit-core-crm"
alias blog="cd /Users/lucy/Documents/code/personal/lucybain"
alias g="git"
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

source /Users/lucy/Documents/code/personal/settings/.profile
source /Users/lucy/Documents/code/personal/settings/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
