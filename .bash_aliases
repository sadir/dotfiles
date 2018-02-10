# Command Aliases
alias vim='vim -u ~/.vim/.vimrc'
alias tvim='vim -u ~/.vim/test/.vimrc'
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
alias pairing_project=prepareProjectForPairing
alias pairing_with=setPair
alias no_longer_pairing="rm $COAUTHOR_FILE"

prepareProjectForPairing() {
  ln -s -f $HOME/.dotfiles/hooks/prepare-commit-msg .git/hooks/prepare-commit-msg
}

setPair() {
    echo "{ \"name\": \"$(pairName $1)\", \"email\": \"$(pairEmail $1)\" }" > \
    $COAUTHOR_FILE
}

pairName() {
  cat $HOME/.dotfiles/.pairs.json | jq -r ".name.$1"
}

pairEmail() {
  cat $HOME/.dotfiles/.pairs.json | jq -r ".email.$1"
}

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
alias pgprr='source $HOME/.dotfiles/postgres prod-read-replica'
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

## Docker aliases
alias dc='docker-compose'
alias d='docker'
alias clean-docker='clean-containers && clean-images'
alias clean-volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias clean-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias clean-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'

#Javascript aliases
alias b='builder'
alias br='builder run test'
alias y='yarn --check-files'
alias ys='yarn start'
alias ysl=yarnStartLinked

yarnStartLinked() { yarn --check-files && yarn link $1 && yarn start; }
