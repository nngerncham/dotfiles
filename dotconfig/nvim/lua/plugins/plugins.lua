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

	-- navigation
	"nvim-telescope/telescope.nvim",
	"LinArcX/telescope-command-palette.nvim",

	-- themes
	"shaunsingh/nord.nvim",
	"tyrannicaltoucan/vim-deep-space",
	"rebelot/kanagawa.nvim",

	-- appearances
	"xiyaowong/transparent.nvim",
	"mhinz/vim-startify",
	"romgrk/barbar.nvim",
	"andrewferrier/wrapping.nvim",

	-- commenting
	"preservim/nerdcommenter",

	-- helpers
	"folke/which-key.nvim",

	-- git
	"airblade/vim-gitgutter",
	"APZelos/blamer.nvim",

	-- airline
	"vim-airline/vim-airline",
	"vim-airline/vim-airline-themes",

	-- file trees
	"nvim-tree/nvim-web-devicons",
	"MunifTanjim/nui.nvim",
	{ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x"},

	-- autocompletion
	{'neoclide/coc.nvim', branch = 'release'},
	"scalameta/nvim-metals",
	"vim-autoformat/vim-autoformat",

	-- LaTeX
	"lervag/vimtex",

	-- snippets
	"SirVer/ultisnips",
}

local opts = {}

require("lazy").setup(plugins, opts)
