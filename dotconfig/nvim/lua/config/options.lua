-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.maplocalleader = ","
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.timeout = true
vim.opt.timeoutlen = 200
vim.opt.winbar = "%=%m %f"
vim.g.root_spec = { "lsp", "cwd" }

-- LaTeX
vim.g.maplocalleader = ","
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
    "-interaction=nonstopmode",
    "-shell-escape",
  },
}
vim.g.Tex_DefaultTargetFormat = "pdf"
vim.g.Tex_ViewRule_pdf = "zathura"
