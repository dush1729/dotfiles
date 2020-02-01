alias gs="git status"
alias gps="git push origin"
alias gpl="git pull --rebase"
alias gc="git commit -m"
alias ga="git add"
alias gl="git log"
alias gd="git diff"
alias gca="git commit --amend -m"
alias gch="git checkout"
alias gf="git fetch"
alias gpo="git pull origin"
alias gst="git stash"
alias gsp="git stash pop"
alias gsc="git stash clear"
alias gsl="git stash list"
alias grs="git reset --soft"
alias grh="git reset --hard"
function gg() {
	ga .
	gc "$1"
	gps
}

alias yo="sudo"
alias rsa="cat ~/.ssh/id_rsa.pub"
alias tc="javaws /home/dush1729/Topcoder.jnlp & e"
alias lb="source ~/.bashrc"
alias eb="subl ~/.bashrc"
alias s="subl "
function sh() {
	cat $1 | nc termbin.com 9999 | xsel -ib
}

alias ddb="mongo --quiet --eval 'db.getMongo().getDBNames().forEach(function(i){db.getSiblingDB(i).dropDatabase()})'"
alias nodemon="source app-env;nodemon"
alias host="ssh -R 80:localhost:1729 ssh.localhost.run"

alias cpc="cp ~/cp/00.cpp"
q() {
	g++ -std=c++11 $1 && ./a.out
}
alias py="python2"
alias py3="python"

alias r="tput reset"
alias e="exit"

c() {
	cd /home/dush1729/Downloads/Detective\ Conan\ season\ 1\ to\ season\ 22\ +\ season\ 23\(incomplete\)/
	cd Detective\ Conan\ Season\ $1/
	vlc ./*$2* & e
}

PS1="\[\033[01;34m\]\w \[\033[00m\]"