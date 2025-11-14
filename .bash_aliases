# Command Aliases
alias vim='vim -u ~/.vim/.vimrc'
alias tvim='vim -u ~/.vim/test/.vimrc'
alias psg='ps -ef|grep '

## Git aliases
alias g='git'

alias pr='hub pull-request --base main'

# Fetch, rebase current branch, checkout main, pull, and merge branch
gmerge() {
  if [ -z "$1" ]; then
    echo "Usage: gmerge <branch-name>"
    return 1
  fi
  git fetch && \
  git rebase origin/main && \
  git checkout main && \
  git pull && \
  git merge --no-ff "$1"
}

## Docker aliases
alias dc='docker-compose'
alias d='docker'
alias clean-docker='clean-containers && clean-images'
alias clean-volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias clean-images='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias clean-containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'

alias cl='claude --dangerously-skip-permissions --model claude-opus-4-1-20250805'
