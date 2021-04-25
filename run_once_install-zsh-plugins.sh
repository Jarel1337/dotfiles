#!/bin/sh
ZMOD_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/zsh"
[[ ! -d "$ZMOD_DIR"/fsh ]] && git clone --depth=1 https://github.com/zdharma/fast-syntax-highlighting "$ZMOD_DIR"/fsh || true
[[ ! -d "$ZMOD_DIR"/powerlevel10k ]] && git clone --depth=1 https://github.com/romkatv/powerlevel10k "$ZMOD_DIR"/powerlevel10k || true
