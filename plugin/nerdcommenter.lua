vim.g.NERDSpaceDelims = 1
vim.g.NERDDefaultAlign = "left"
vim.g.NERDToggleCheckAllLines = 1

local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

map("n", "++", "<plug>NERDCommenterToggle", opts)
map("v", "++", "<plug>NERDCommenterToggle", opts)
