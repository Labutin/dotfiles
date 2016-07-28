export PATH="~/.rbenv/shims:/usr/local/sbin:$PATH"
export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom"

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

eval "$(rbenv init -)"
alias ll="ls -al"
alias docker-rm-stopped-containers="docker rm $(docker ps -q -f status=exited)"