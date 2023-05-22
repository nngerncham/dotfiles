local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<S-tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<leader>cq", "<Cmd>BufferClose<CR>", opts)
