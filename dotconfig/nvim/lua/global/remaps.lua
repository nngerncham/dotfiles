local options = { noremap = true }
local map = vim.api.nvim_set_keymap

map("n", "j", "gj", options)
map("n", "k", "gk", options)

map("i", "jk", "<esc>", options)
