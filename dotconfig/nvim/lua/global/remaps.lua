local options = { noremap = true }
local map = vim.api.nvim_set_keymap

-- moving around
map("n", "j", "gj", options)
map("n", "k", "gk", options)

-- skipping lines
map("n", "ge", "<S-g>", options)
map("n", "gl", "<S-$>", options)
map("n", "gh", "0", options)

-- returning to normal
map("i", "jk", "<esc>", options)
map("v", "JK", "<esc>", options)
map("t", "jk", "<C-\\><C-n>", options)
