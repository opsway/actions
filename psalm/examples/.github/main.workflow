workflow "Main" {
  on = "push"
  resolves = ["Psalm"]
}

action "Psalm" {
  uses = "docker://quay.io/opsway/actions:psalm"
  args = "--show-info=false"
}
