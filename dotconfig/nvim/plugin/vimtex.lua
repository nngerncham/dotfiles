local opts = { noremap = true }
local map = vim.api.nvim_set_keymap

vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0

vim.cmd([[set conceallevel=2]])
vim.cmd([[let g:vimtex_syntax_conceal = {
          \ 'accents': 1,
          \ 'ligatures': 1,
          \ 'cites': 1,
          \ 'fancy': 1,
          \ 'spacing': 1,
          \ 'greek': 1,
          \ 'math_bounds': 1,
          \ 'math_delimiters': 1,
          \ 'math_fracs': 0,
          \ 'math_super_sub': 0,
          \ 'math_symbols': 1,
          \ 'sections': 1,
          \ 'styles': 1,
          \}]])

vim.g.vimtex_compiler_method = "latexmk"
vim.g.Tex_DefaultTargetFormat = "pdf"
vim.g.Tex_ViewRule_pdf = "zathura"

map("n", "<localleader>q", "<cmd>!zathura template.pdf &<CR>", opts)
