local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

require("wrapping").setup()
map("n", "<leader>sw", "<cmd>SoftWrapMode<CR>", opts)
