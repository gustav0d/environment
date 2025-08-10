EDITOR=vim

alias bashrc='$EDITOR $HOME/.bashrc'
alias bash_aliases='$EDITOR $HOME/.bash_aliases'
alias reload='source $HOME/.bashrc'
alias pn=pnpm
alias dc=docker-compose

alias gcm='git checkout main'
alias gl='git log --oneline'
alias gll='git pull'
alias gs='git log'
alias gst='git stash'
alias gstp='git stash pop'
alias gc='git checkout'
alias push_pr="git push -u origin HEAD && gh pr create --fill --body ''"

