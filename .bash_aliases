# Command Aliases
alias vim='vim -u ~/.vim/.vimrc'
alias tvim='vim -u ~/.vim/test/.vimrc'
alias psg='ps -ef|grep '

## Git aliases
alias g='git'

alias pr='hub pull-request --base main'

## Docker aliases
alias dc='docker-compose'
alias d='docker'
alias clean-docker='clean-containers && clean-images'
alias clean-volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias clean-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias clean-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'

alias codegen='HERE=$(pwd) && cd $CODEROOT/select/select/web && cd backend && echo "Dumping schema..." && poetry run backend-dump-schema && cd - && cd frontend && echo "generating types" && npm run types:generate && cd $HERE'
