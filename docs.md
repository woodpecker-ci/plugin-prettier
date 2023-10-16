---
name: Prettier
icon: https://woodpecker-ci.org/img/logo.svg
description: This plugin can be used to check if a repository is following prettier rules.
authors: Woodpecker Authors
tags: [lint, test, prettier]
containerImage: woodpeckerci/plugin-prettier
containerImageUrl: https://hub.docker.com/r/woodpeckerci/plugin-prettier
url: https://github.com/woodpecker-ci/plugin-prettier
---

This plugin can be used to check if a repository is following prettier rules.

## Sample

```yaml
steps:
  prettier:
    image: woodpeckerci/plugin-prettier:next
```

## Settings

| Settings Name | Default | Description                                 |
| ------------- | ------- | ------------------------------------------- |
| `path`        | `.`     | If specified, it checks in a specified path |
