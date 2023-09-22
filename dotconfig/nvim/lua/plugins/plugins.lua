local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- plugin manager
	"folke/lazy.nvim",
	"nvim-lua/plenary.nvim",

	-- themes
	"rebelot/kanagawa.nvim",

	-- appearances
	"mhinz/vim-startify",
	"romgrk/barbar.nvim",

	-- airline
	"nvim-lualine/lualine.nvim",

	-- helpers
	"folke/which-key.nvim",

	-- navigation
	"nvim-telescope/telescope.nvim",
	"LinArcX/telescope-command-palette.nvim",
	{ "alexghergh/nvim-tmux-navigation", lazy = false },

	-- commenting
	"preservim/nerdcommenter",

	-- git
	"airblade/vim-gitgutter",
	"tpope/vim-fugitive",
	"APZelos/blamer.nvim",

	-- file trees
	"nvim-tree/nvim-web-devicons",
	"MunifTanjim/nui.nvim",
	{ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x" },

	-- autocompletion + LSPs
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jay-babu/mason-null-ls.nvim",
	"lvimuser/lsp-inlayhints.nvim",
	"jose-elias-alvarez/null-ls.nvim",

	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",

	"onsails/lspkind.nvim",

	"SirVer/ultisnips",
	"quangnguyen30192/cmp-nvim-ultisnips",

	-- good utils
	"windwp/nvim-autopairs",
	"mbbill/undotree",

	"kevinhwang91/nvim-bqf",
	"folke/trouble.nvim",

	"kylechui/nvim-surround",

	-- tree-sitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},
	"nvim-treesitter/playground",

	-- plugins for specific languages
	"lervag/vimtex",
	"anufrievroman/vim-angry-reviewer",

	"rust-lang/rust.vim",
	"simrat39/rust-tools.nvim",
	"saecki/crates.nvim",

	-- debugger
	"mfussenegger/nvim-dap",
    "ldelossa/nvim-dap-projects",
    "folke/neodev.nvim",
	"rcarriga/nvim-dap-ui",
	"theHamsta/nvim-dap-virtual-text",
}

local opts = {}

require("lazy").setup(plugins, opts)
