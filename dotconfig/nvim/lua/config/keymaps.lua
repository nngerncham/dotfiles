-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keybinds
vim.keymap.set("i", "jk", "<esc>`^")
vim.keymap.set({ "n", "x" }, "ge", "<S-g>")
vim.keymap.set({ "n", "x" }, "gh", "_")
vim.keymap.set({ "n", "x" }, "gl", "g_")
vim.keymap.set("n", "<S-u>", "<C-r>")
