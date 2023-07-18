# git
alias gs="git status"
alias gps="git push origin"
alias gpl="git pull origin"
alias gc="git commit -m"
alias ga="git add --all"
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
	ga
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
alias cpc="cp ~/repo/cp/library/templates/00.cpp"
alias cpl="cp ~/repo/cp/library/templates/leetcode.cpp"
q() {
	g++ -std=c++17 -Wshadow -DDUSH1729 -I . $1 -o ~/repo/cp/code/.a.out && cp $1 ~/repo/cp/code/final/code.cpp && time ~/repo/cp/code/.a.out
}
qtc() {
    g++ -std=c++11 -Wshadow -DDUSH1729 -I . $1 -o ~/repo/cp/code/.a.out && cp $1 ~/repo/cp/code/final/code.cpp && time ~/repo/cp/code/.a.out
}
qq() {
	g++ -std=c++17 -Wshadow -DDUSH1729 -Wall -Wno-misleading-indentation -fsanitize=address -fsanitize=undefined -I . $1 -o ~/repo/cp/code/.a.out && cp $1 ~/repo/cp/code/final/code.cpp  && ~/repo/cp/code/.a.out
}
alias py="python3"
alias tc="/opt/OpenWebStart/javaws -jnlp ~/Topcoder.jnlp &! e"
alias hi="cd ~/repo/cp/code/ && java -jar Hightail-v0.9.7.jar &! e"

alias subl='open -a "Sublime Text"'
alias r="tput reset"
alias e="exit"
alias lb="source ~/.zshrc"
alias eb="subl ~/.zshrc"
alias s="subl "

play() {
    cd ~/Desktop/op
    files=(*)
    echo $(date "+%y-%m-%d %T") watching ${files[1]} | cat >> op.txt
    vlc ${files[1]}
}
del() {
    cd ~/Desktop/op
    files=(*)
    echo $(date "+%y-%m-%d %T") deleting ${files[1]} | cat >> op.txt
    gio trash ${files[1]}
}

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'
