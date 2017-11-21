# Command Aliases
alias psg='ps -ef|grep '

## Ruby aliases
alias cucumber='bundle exec cucumber --color'
alias guard='bundle exec guard'
alias rake='bundle exec rake'
alias rspec='bundle exec rspec --color'

## Git aliases
alias g='git'

alias gmgr=gitMergeRuby
alias gmge=gitMergeElixir
alias gmgb=gitMergeBuilder
alias gmgy=gitMergeYarn
alias gmgnt=gitMergeNoTests

alias pr='hub pull-request'

gitMergeRuby() {
  git merge --no-ff $1 && rake && git push && git push origin :$1 && git branch -d $1
}

gitMergeElixir() {
  git merge --no-ff $1 && mix test && git push && git push origin :$1 && git branch -d $1
}

gitMergeBuilder() {
  git merge --no-ff $1 && builder run test && git push && git push origin :$1 && git branch -d $1
}

gitMergeYarn() {
  git merge --no-ff $1 && yarn jest && git push && git push origin :$1 && git branch -d $1
}

gitMergeNoTests() {
  git merge --no-ff $1 && git push && git push origin :$1 && git branch -d $1
}

## Dev aliases
alias prp='git pull && rake && git push'

## Proxy aliases
alias p='source $HOME/.dotfiles/proxy on'
alias np='source $HOME/.dotfiles/proxy off'

## Postgres aliases
alias pgd='source $HOME/.dotfiles/postgres docker'
alias pgl='source $HOME/.dotfiles/postgres local'
alias dbpg='export POSTGRES=1'
alias dbnpg='unset POSTGRES'

## AWS Aliases
alias rds-instances=rdsInstances
alias rds-log-files=rdsDescribeLogFiles
alias rds-get-logfile=rdsGetLogFile

rdsInstances() {
  aws rds describe-db-instances
}

rdsDescribeLogFiles() {
  aws rds describe-db-log-files --db-instance-identifier $1
}

rdsGetLogFile() {
  aws rds download-db-log-file-portion --db-instance-identifier $1 --log-file-name $2 > $CODEROOT/nextdayproperty/$2
}
