# git
alias gs="git status"
alias gps="git push origin"
alias gpl="git pull origin"
alias gc="git commit -m"
alias ga="git add"
alias gl="git log"
alias gd="git diff"
alias gdab="git for-each-ref --format '%(refname:short)' refs/heads | xargs git branch -D"
alias gca="git commit --amend -m"
alias gch="git checkout"
alias gchn="git checkout -b"
alias gf="git fetch -p"
alias gpo="git pull origin"
alias gst="git stash"
alias gsp="git stash pop"
alias gsc="git stash clear"
alias gsl="git stash list"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gspp="gst;gpl;gsp"
unalias gg
function gg() {
	ga .
	gc "$1"
	gps
}

# web dev
# delete mongodb database
alias ddb="mongo --quiet --eval 'db.getMongo().getDBNames().forEach(function(i){db.getSiblingDB(i).dropDatabase()})'"
# load environment variables and start localhost
alias nodemon="source app-env;nodemon"
# share localhost for testing
alias host="ssh -R 80:localhost:1729 ssh.localhost.run"

# competitive programming
alias cpc="cp ~/cp/00.cpp"
q() {
	g++ -std=c++11 $1 && ./a.out
}
alias py="python2"
alias py3="python"
alias tc="javaws /home/dush1729/Topcoder.jnlp & e"

alias r="tput reset"
alias e="exit"
alias lb="source ~/.bashrc"
alias eb="subl ~/.bashrc"
alias s="subl "

PS1="\[\033[01;34m\]\w \[\033[00m\]"
HISTTIMEFORMAT="%d/%m/%y %T "
PROMPT_COMMAND="printf '\n'"
export HISTSIZE=999999999999