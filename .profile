alias ga='git add .'
alias gs='git status'
alias gf='git fetch'
alias gc='git commit -m'
alias gck='git checkout'
alias gckb='git checkout -b'
alias gpull='git pull'
alias gpush='git push'
alias gdev='git checkout dev'

alias runserver='python manage.py runserver'
 
alias pdir='cd ~/Projects'

alias setup-ansible='source /Users/tatavo/Projects/ansible/hacking/env-setup'

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin

function gtav {
    git commit -m "VersionCode $1 VersionName $2"
    git tag $1-$2
    git push
    git push origin $1-$2
}
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin
