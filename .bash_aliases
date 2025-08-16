# Command Aliases
alias vim='vim -u ~/.vim/.vimrc'
alias tvim='vim -u ~/.vim/test/.vimrc'
alias psg='ps -ef|grep '

## Git aliases
alias g='git'
alias gclean='git branch | grep -v "staging\|main\|master" | xargs git branch -D'

alias pr='hub pull-request --base main'

## Docker aliases
alias dc='docker-compose'
alias d='docker'
alias clean-docker='clean-containers && clean-images'
alias clean-volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias clean-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias clean-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'

alias gen='HERE=$(pwd) && cd $HERE/web && cd backend && echo "Dumping schema..." && poetry run backend-dump-schema && cd - && cd frontend && echo "generating types" && npm run types:generate && cd $HERE'
alias gready='cd web && cd backend && source .venv/bin/activate && poetry install && alembic upgrade head && cd ../frontend && npm install && cd ../../ && gen'
alias gup='g co main && g pull && gready'
alias cl='claude --dangerously-skip-permissions --model claude-opus-4-1-20250805'
alias clsel='set -a && source .env.local && set +a && cl'
alias cs='claude-squad -y -p "claude --dangerously-skip-permissions"'
