workflow "Main" {
  on = "push"
  resolves = ["Psalm"]
}

action "Psalm" {
  uses = "quay://quay.io/opsway/actions:psalm"
  secrets = ["GITHUB_TOKEN"]
  args = "--find-dead-code --threads=8 --diff --diff-methods"
}
