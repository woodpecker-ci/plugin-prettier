---
name: Prettier
icon: https://raw.githubusercontent.com/woodpecker-ci/plugin-prettier/main/prettier.png
description: This plugin can be used to check if a repository is following prettier rules.
author: Woodpecker Authors
tags: [lint, test, prettier]
containerImage: woodpeckerci/plugin-prettier
containerImageUrl: https://hub.docker.com/r/woodpeckerci/plugin-prettier
url: https://github.com/woodpecker-ci/plugin-prettier
---

# plugin-prettier

This plugin can be used to check if a repository is following [prettier](https://prettier.io/) rules.

## Sample

```yaml
steps:
  prettier:
    image: woodpeckerci/plugin-prettier:next
```

## Settings

| Settings Name | Default | Description                                                                 |
| ------------- | ------- | --------------------------------------------------------------------------- |
| `path`        | `.`     | If specified, it checks in a specified path                                 |
| `version`     | empty   | If specified, this prettier version is installed                            |
| `lockfile`    | empty   | If specified, prettier version is read from lockfile (support npm and pnpm) |
