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
