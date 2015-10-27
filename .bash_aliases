# Plextop
alias plextop='ssh nhaarman@195.64.72.80 -p 8150'

# Git
function clone() {
   git clone git@github.com:$1.git
}

# Open Github
function github() {
   local remote=$(git config --get remote.origin.url)
   local tmp=${remote#*:}
   local repo=${tmp%.*}
   $(google-chrome http://www.github.com/$repo >> /dev/null) 
}

# Some locations
alias ..='cd ..'
alias home='cd ~'
alias h='cd ~'
alias dev='cd ~/Development'
alias downloads='cd ~/Downloads'
alias down='cd ~/Downloads'

# Recursively remove files
function rmf() {
  find . -type f -name "$1" -exec rm -v {} \;
}
