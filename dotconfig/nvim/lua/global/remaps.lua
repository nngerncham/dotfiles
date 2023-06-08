local options = { noremap = true }
local map = vim.api.nvim_set_keymap

-- moving around
map("n", "j", "gj", options)
map("n", "k", "gk", options)

-- moving things around
map("v", "<C-j>", ":m '>+1<CR>gv=gv", options)
map("v", "<C-k>", ":m '<-2<CR>gv=gv", options)

map("n", "J", "mzJ`z", options)

-- skipping lines
map("n", "ge", "<S-g>", options)
map("n", "gl", "<S-$>", options)
map("n", "gh", "0", options)

-- returning to normal
map("i", "jk", "<esc>", options)
map("v", "JK", "<esc>", options)
map("t", "jk", "<C-\\><C-n>", options)

-- copy/pasting
map("x", "<leader>p", "\"_dP", { noremap = true, desc = "Paste on top of selection" })
map("n", "<leader>y", "\"+y", { noremap = true, desc = "Copy to system clipboard" })
map("v", "<leader>y", "\"+y", { noremap = true, desc = "Copy to system clipboard" })

-- undo
map("n", "U", "<C-r>", options)

-- formatting
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end, options)

-- quickfix
map("n", "co", ":copen<CR>", { noremap = true, desc = "Open quick fixes" })
map("n", "cf", ":cclose<CR>", { noremap = true, desc = "Close quick fixes" })
