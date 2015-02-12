# names=("Lucy Bain")
# for name in "${names[@]}"
# do
#   echo $name
#   git log --shortstat --author "${name}" --since "1 month ago" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
#   echo
# done

for dir_path in /Users/lucy/Documents/code/work/*/ ; do
  dir_name=$(basename $dir_path)
  alias $dir_name="cd $dir_path"
done

alias core="cd /Users/lucy/Documents/code/work/splitit-core"
alias sq="cd /Users/lucy/Documents/code/work/splitit-core-services"
alias crm="cd /Users/lucy/Documents/code/work/splitit-core-crm"
alias lm="cd /Users/lucy/Documents/code/work/lm-app"
alias rbg="cd /Users/lucy/Documents/code/work/robie-gem"

alias personal="cd /Users/lucy/Documents/code/personal/"
alias work="cd /Users/lucy/Documents/code/work/"
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