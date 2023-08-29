#!/bin/sh

if [ -d "~/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

for fn in alacritty fish helix i3 nvim tmux;
do
    full_path="$HOME/.config/$fn"
    cp -r "$full_path" "$full_path.backup"
done

rm -rf ~/.config/*.backup
cp -r dotconfig/* ~/.config/
cp tohome/.ideavimrc ~/
