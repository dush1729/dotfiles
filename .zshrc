# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/dush1729/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	zsh-autosuggestions
	zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




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
alias cpc="cp ~/repo/cp/code/00.cpp"
q() {
	g++ -std=c++17 -DDUSH1729 -I . $1 -o ~/repo/cp/code/.a.out && cp $1 ~/repo/cp/code/final/code.cpp && time ~/repo/cp/code/.a.out
}
qtc() {
    g++ -std=c++11 -DDUSH1729 -I . $1 -o ~/repo/cp/code/.a.out && cp $1 ~/repo/cp/code/final/code.cpp && time ~/repo/cp/code/.a.out
}
qq() {
	g++ -std=c++17 -DDUSH1729 -Wall -Wno-misleading-indentation -fsanitize=address -fsanitize=undefined -I . $1 -o ~/repo/cp/code/.a.out && cp $1 ~/repo/cp/code/final/code.cpp  && ~/repo/cp/code/.a.out
}
alias py="python2"
alias py3="python3"
alias tc="/opt/OpenWebStart/javaws -jnlp ~/Topcoder.jnlp & e"
alias hi="cd ~/repo/cp/code/ && java -jar Hightail-v0.9.7.jar & e"

alias r="tput reset"
alias e="exit"
alias lb="source ~/.zshrc"
alias eb="subl ~/.zshrc"
alias s="subl "

play() {
    cd ~/Desktop/op
    files=(*)
    vlc ${files[1]}
}
del() {
    cd ~/Desktop/op
    files=(*)
    echo deleting ${files[1]}...
    gio trash ${files[1]}
}

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'
