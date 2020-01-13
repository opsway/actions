# GithubAction for Psalm

## Usage

You can use it as a Github Action like this:

_.github/main.workflow_
```
workflow "Main" {
  on = "push"
  resolves = ["Psalm"]
}

action "Psalm" {
  uses = "docker://quay.io/opsway/actions:psalm"
}
```

_to add specific arguments:_
```diff
workflow "Main" {
  on = "push"
  resolves = ["Psalm"]
}

action "Psalm" {
  uses = "docker://quay.io/opsway/actions:psalm"
+  args = "--show-info=false --threads=4"
}
```
