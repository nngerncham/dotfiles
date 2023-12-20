#!/bin/sh

if [ -d "~/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [ -d "~/.config/lvim" ]; then
    export LV_BRANCH='release-1.3/neovim-0.9'
    curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh | sh
fi

cp -r dotconfig/* ~/.config/
cp -r layouts ~/.tmuxifier/
cp tohome/.ideavimrc ~/
