require("mason-null-ls").setup({
	ensure_installed = {
		"stylua",

		"ruff",
		"mypy",
		"black",
		"debugpy",

		"hadolint",
	},
})

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,

		null_ls.builtins.diagnostics.mypy,
		null_ls.builtins.diagnostics.ruff,
		null_ls.builtins.formatting.black,

        null_ls.builtins.diagnostics.hadolint,
	},
})
