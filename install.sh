#!/bin/sh

set -eu

repo_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
timestamp=$(date +%Y%m%d%H%M%S)

backup_if_present() {
  target=$1

  if [ -e "$target" ] || [ -L "$target" ]; then
    mv "$target" "$target.save.$timestamp"
    printf 'Backed up %s to %s\n' "$target" "$target.save.$timestamp"
  fi
}

install_file() {
  source=$1
  target=$2

  backup_if_present "$target"
  cp "$source" "$target"
  printf 'Installed %s\n' "$target"
}

install_file "$repo_dir/tmux.conf" "$HOME/.tmux.conf"
install_file "$repo_dir/vimrc" "$HOME/.vimrc"
install_file "$repo_dir/runFromVim.sh" "$HOME/.runFromVim.sh"
install_file "$repo_dir/sendBuffer.sh" "$HOME/.sendBuffer.sh"

chmod 755 "$HOME/.runFromVim.sh" "$HOME/.sendBuffer.sh"

printf 'Done. Start or reload tmux, then open testme.bash with vi.\n'
