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
    git commit -m "VersionName $1 VersionCode $2"
    git tag v$1-$2
    git push
    git push origin v$1-$2
}

function clean_merge_tool {
	find . -name "*.orig" -type f -delete
	find . -name "*_BASE_*" -type f -delete
	find . -name "*_REMOTE_*" -type f -delete
	find . -name "*_LOCAL_*" -type f -delete
	find . -name "*_BACKUP_*" -type f -delete

}

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin
