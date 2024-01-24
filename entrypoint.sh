#! /bin/sh

if [ -z "$PLUGIN_VERSION" ] && [ -n "$PLUGIN_LOCKFILE" ]; then
  case $PLUGIN_LOCKFILE in
  *package-lock.json)
    PLUGIN_VERSION=$(jq -r '.packages.["node_modules/prettier"].version' "$PLUGIN_LOCKFILE");;
  *pnpm-lock.yaml)
    PLUGIN_VERSION=$(yq -r .devDependencies.prettier.version "$PLUGIN_LOCKFILE");;
  esac
fi

if [ -n "$PLUGIN_VERSION" ] && [ "$PLUGIN_VERSION" != "$(prettier --version)" ]; then
  npm install --global "prettier@$PLUGIN_VERSION"
fi

PRETTIER_PATH="."

if [ -n "$PLUGIN_PATH" ]; then
  PRETTIER_PATH="$PLUGIN_PATH"
fi

ARGS="--check $PRETTIER_PATH"

if [ $# -gt 0 ]; then
  ARGS="$@"
fi

prettier $ARGS
