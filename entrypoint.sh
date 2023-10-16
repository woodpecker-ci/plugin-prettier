#! /bin/sh

PRETTIER_PATH="."

if [ -n "$PLUGIN_PATH" ]; then
  PRETTIER_PATH="$PLUGIN_PATH"
fi

ARGS="--check $PRETTIER_PATH"

if [ $# -gt 0 ]; then
  ARGS="$@"
fi

prettier $ARGS
