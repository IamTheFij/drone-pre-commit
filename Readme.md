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

## To Do

So far this is basic and unopinionated. Either this will become very personal as I tack on dependencies for the hooks I often use, or it'll become complicated as I add args for everything and build out many tags. I think I'll probbably try to provide some reasonable base image that can then be extended in a new image or as part of one's build pipeline.
