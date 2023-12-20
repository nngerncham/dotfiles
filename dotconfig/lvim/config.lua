-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- plugins
lvim.plugins = {
  -- themes
  { "rebelot/kanagawa.nvim" },
  { "alexmozaidze/palenight.nvim" },

  -- in-lay hints
  { "lvimuser/lsp-inlayhints.nvim" },

  -- navigation
  { "alexghergh/nvim-tmux-navigation", lazy = false },

  -- LaTeX
  { "lervag/vimtex" },
  { "anufrievroman/vim-angry-reviewer" },
}

lvim.colorscheme = "kanagawa"
lvim.builtin.lualine.options.theme = "modus-vivendi"

-- keybinds
lvim.keys.insert_mode["jk"] = "<esc>`^"

lvim.lsp.buffer_mappings.normal_mode["gl"] = false
lvim.keys.normal_mode["j"] = "gj"
lvim.keys.normal_mode["k"] = "gk"
lvim.keys.normal_mode["ge"] = "<S-g>"
lvim.keys.normal_mode["gh"] = "_"
lvim.keys.normal_mode["gl"] = "g_"

lvim.keys.visual_mode["j"] = "gj"
lvim.keys.visual_mode["k"] = "gk"
lvim.keys.visual_mode["ge"] = "<S-g>"
lvim.keys.visual_mode["gh"] = "_"
lvim.keys.visual_mode["gl"] = "g_"

-- options
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.timeout = true
vim.opt.timeoutlen = 200

-- formatting
lvim.format_on_save.enabled = true

vim.list_extend(lvim.builtin.project.patterns, { "Cargo.toml", "pyproject.yaml" })

-- tmux integration (a bit slow :/)
local nvim_tmux_nav = require("nvim-tmux-navigation")
nvim_tmux_nav.setup({
  disable_when_zoomed = true
})
lvim.keys.normal_mode["<C-h>"] = nvim_tmux_nav.NvimTmuxNavigateLeft
lvim.keys.normal_mode["<C-j>"] = nvim_tmux_nav.NvimTmuxNavigateDown
lvim.keys.normal_mode["<C-k>"] = nvim_tmux_nav.NvimTmuxNavigateUp
lvim.keys.normal_mode["<C-l>"] = nvim_tmux_nav.NvimTmuxNavigateRight

-- inlay hints
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

-- LaTeX
vim.g.maplocalleader = ","
lvim.keys.normal_mode["<localleader>q"] = "<cmd>!zathura template.pdf &<CR>"
vim.opt.conceallevel = 2
vim.g.vimtex_syntax_conceal = {
  accents = 1,
  ligatures = 1,
  cites = 1,
  fancy = 1,
  spacing = 1,
  greek = 1,
  math_bounds = 1,
  math_delimiters = 1,
  math_fracs = 0,
  math_super_sub = 0,
  math_symbols = 1,
  sections = 1,
  styles = 1,
}
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  executable = "latexmk",
  options = {
    "-xelatex",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode"
  }
}
vim.g.Tex_DefaultTargetFormat = "pdf"
vim.g.Tex_ViewRule_pdf = "zathura"
