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

alias gotoenv='cd ~/www/personal/environment'
alias gotoblog='~/www/personal/blog'

alias createnodeversion='node --version > .node-version'

# Script to run commands at the root of pnpm workspace
pnfilter() {
  if [ $# -lt 2 ]; then
    echo "Usage: pnfilter <appname> <command> [args...]"
    return 1
  fi
  local appname="$1"
  shift
  # `*` is a wildcard so there's no need to type @workspace-name/appname
  # Example: I want to run `pnpm --filter @monorepo/server dev``
  # I can just run `pnfilter server dev`
  pnpm --filter "*/$appname" "$@"
}