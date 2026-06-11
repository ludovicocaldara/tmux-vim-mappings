#!/bin/sh

set -eu

buffer_file=$(mktemp "${TMPDIR:-/tmp}/tmux-buffer.XXXXXX")
trap 'rm -f "$buffer_file"' EXIT

cat - > "$buffer_file"
tmux load-buffer "$buffer_file"
tmux paste-buffer -d
