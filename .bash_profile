for dir_path in /Users/lbain/code/work/*/ ; do
  dir_name=$(basename $dir_path)
  alias $dir_name="cd $dir_path"
done

for dir_path in /Users/lbain/code/personal/*/ ; do
  dir_name=$(basename $dir_path)
  alias $dir_name="cd $dir_path"
done

alias personal="cd /Users/lbain/code/personal/"
alias work="cd /Users/lbain/code/work/"
alias yoga="cd /Users/lbain/code/personal/yoga-timing/ && ruby training.rb"
alias hideDesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showDesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias g="git"
alias gb="git branch"
alias gs="git status"

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

source /Users/lbain/Dropbox/settings/.profile
source /Users/lbain/Dropbox/settings/.git-completion.bash

HISTFILESIZE=1000000000 HISTSIZE=1000000
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
