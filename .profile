#!/bin/bash
alias vim=nvim

export EDITOR="vim"

## Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

ruby_version() {
  if [ -e ./.rbenv-version -o -e ./.ruby-version ]; then
    echo "→ `rbenv version-name`"
  fi
}

## Git
export RED="\033[0;31m"
export YELLOW="\033[0;33m"
export GREEN="\033[0;32m"
export BRANCH="\033[01;30m"

git_current_branch_name() {
  local branch="$(git symbolic-ref HEAD 2>/dev/null)";
  if [ -n "$branch" ]; then
    printf "%s" "${branch##refs/heads/}";
  fi
}

git_prompt() {
  local br="$BRANCH"
  if [ -e ./.git ]; then
    local cl="$GREEN"
    echo  -e "$br[$cl$(git_current_branch_name)$br]"
  fi
}

## Prompt
user="\[\033[01;33m\]\u"
path="\[\033[01;37m\]:\[\033[01;34m\]\W"
prompt=" \[\033[00m\]\$ "

git="\$(git_prompt)"
ruby="\n\[\033[01;35m\]\$(ruby_version)"

export PS1="$user$path$git$ruby$prompt"
