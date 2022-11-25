git_checkout() {
  git checkout -b "$1" && git push --set-upstream origin "$1"
}
