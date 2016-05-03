#!/bin/bash

BASESHELL=~/.config/base16-shell
BASHRC=~/.bashrc

mkdir ~/.config 2>/dev/null
git clone https://github.com/chriskempson/base16-shell.git ${BASESHELL} 2>/dev/null

echo "" >> ${BASHRC}
echo "# Base16 Shell" >> ${BASHRC}
echo "BASE16_SHELL=\"$HOME/.config/base16-shell/base16-default.dark.sh\"" >> ${BASHRC}
echo "[[ -s \$BASE16_SHELL ]] && source \$BASE16_SHELL" >> ${BASHRC}

