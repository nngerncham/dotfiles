require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"gopls",
		"pyright",
		"clangd",

		"marksman",
		"texlab",

		"dockerls",
		"docker_compose_language_service",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(_, bufnr)
	vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

	vim.keymap.set("n", "gd", vim.lsp.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

vim.diagnostic.config({
	virtual_text = false,
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

require("lsp-inlayhints").setup()
vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
vim.api.nvim_create_autocmd("LspAttach", {
	group = "LspAttach_inlayhints",
	callback = function(args)
		if not (args.data and args.data.client_id) then
			return
		end

		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		require("lsp-inlayhints").on_attach(client, bufnr)
	end,
})

-- Lua
require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "lua" },
})

-- Python
require("lspconfig").pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})

-- LaTeX
require("lspconfig").texlab.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "latex", "tex", "bib" },
})

-- Markdown
require("lspconfig").marksman.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "markdown" },
})

-- C/C++
require("lspconfig").clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "c", "cpp" },
})

-- Go
require("lspconfig").gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
			hints = {
				assignVariableTypes = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
		},
	},
})

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- i3 syntax highlighting
autocmd({ "BufNewFile", "BufRead" }, {
	group = augroup("i3config_ft_detection", { clear = true }),
	pattern = { "*/i3/config", "*/i3/config.d/*" },
	command = "set filetype=i3config",
})
