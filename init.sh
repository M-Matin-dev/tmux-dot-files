#!/bin/sh
# Install TPM and all plugins listed in tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Remove empty plugin dirs so TPM doesn't skip cloning them
cd ~/.config/tmux/plugins && for d in */; do
  d="${d%/}"
  [ "$d" = "tpm" ] && continue
  [ -z "$(ls -A "$d")" ] && rm -rf "$d"
done

~/.config/tmux/plugins/tpm/scripts/install_plugins.sh
