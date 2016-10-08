export PATH="~/.rbenv/shims:/usr/local/sbin:$PATH"
export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

eval "$(rbenv init -)"
alias ll="ls -al"
alias docker-rm-stopped-containers="docker rm \$(docker ps -q -f status=exited)"
alias docker-rm-untaged-images="docker rmi \$(docker images --filter dangling=true -q)"
alias docker-rm-unused-volumes="docker volume rm \$(docker volume ls -qf dangling=true)"