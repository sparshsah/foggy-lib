git_status() {
  git branch && git status
}

git_checkout() {
  git checkout -b "$1" && git push --set-upstream origin "$1"
}

git_em_down_scotty() {
  git checkout main && git pull && git_status
}

git_me_up_scotty() {
  git status && git pull --no-edit && git branch && git add . && git status && git commit -m ok && git push && git_status
}

git_rebase() {
  git_em_down_scotty && git checkout "$1" && git branch sparsh/pre-rebase-stash && git rebase origin/main && git push --force-with-lease && git branch -D sparsh/pre-rebase-stash && git_em_down_scotty
}

_git_rebase_all() {
  # https://stackoverflow.com/a/70501291
  # ... list all local branches
  # ... start at char 3 and go to end of line for each line (strip leading "* " or "  ")
  # ... for each listed branch name, git_rebase it
  git branch | cut -c 3- | for branch in $(cat); do git_rebase "$branch"; done
}

git_rebase_all() {
  _git_rebase_all && echo -e "\n\n... git-rebased all"
}
