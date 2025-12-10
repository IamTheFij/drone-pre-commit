# drone-pre-commit
A [pre-commit](https://pre-commit.com) plugin, for the drone.io project, which allows you to run pre-commit checks as part of your build steps.

## Examples

An example configuration would be as follows:

```yaml
steps:
  - name: run checks
    image: iamthefij/drone-pre-commit:latest
```

Or, if you have additional dependencies to install

```yaml
steps:
  - name: run ruby dependent checks
    image: iamthefij/drone-pre-commit:latest
    commands:
      - apt-get update
      - apt-get install -y --no-install-recommends ruby
      # You must run your own pre-commit command at the end
      - pre-commit run --all-files
```

## Personal image

A second image is also built for my personal use, but it may be useful to you as well. This image includes the following dependencies:

  * hadolint
  * golang
  * golangci-lint
  * goimports
