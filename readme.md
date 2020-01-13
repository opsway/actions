# GitHub Actions collection by OpsWay

[For local test use act](https://github.com/nektos/act)

## Use case

### Static analysis with Psalm

Create alias fo command `psalm`
```shell script
alias psalm="docker run --rm -it -v \${PWD}:/app quay.io/opsway/actions:psalm"
```

Create config where config_level represents how strict you want Psalm to be.
 
> `1` is the strictest, `8` is the most lenient

```shell script
psalm --init src 8 
```

Hide current statistical analysis errors ;)

```shell script
psalm --set-baseline=psalm-debt.xml
```

Run local

```shell script
psalm --show-info=false
```

Run on GitHub Action, create `.github/main.workflow`
```hcl
workflow "Main" {
  on = "push"
  resolves = ["Psalm"]
}

action "Psalm" {
  uses = "docker://quay.io/opsway/actions:psalm"
  args = "--show-info=false"
}
```
