-- barbar
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<S-tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<leader>cq", "<Cmd>BufferClose<CR>", opts)

-- lualine
require("lualine").setup({
	options = {
		theme = "palenight",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
	},
})

-- neotree
vim.api.nvim_set_keymap("n", "<C-n>", ":NeoTreeShowToggle<CR>", { noremap = true })

require("neo-tree").setup({
	close_if_last_window = true,
	enable_git_status = true,
	window = {
		position = "right",
		width = 35
	}
})
