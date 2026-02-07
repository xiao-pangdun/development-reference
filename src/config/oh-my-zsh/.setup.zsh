#!/bin/zsh

cd "${0:h}"
echo "[oh-my-zsh]"
ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc" && echo "  [oh-my-zsh] .zshrc symlink created"