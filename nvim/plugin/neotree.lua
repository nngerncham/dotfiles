vim.api.nvim_set_keymap("n", "<C-n>", ":NeoTreeShowToggle<CR>", { noremap = true })

require("neo-tree").setup({
	close_if_last_window = true,
	enable_git_status = true,
	window = {
		position = "right",
		width = 35
	}
})
