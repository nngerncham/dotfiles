local opts = { noremap = true }
local map = vim.api.nvim_set_keymap

vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_mode = 0

vim.cmd[[set conceallevel=1]]
vim.g.tex_conceal = "abdmg"

vim.g.vimtex_compiler_method = "latexmk"
vim.g.Tex_DefaultTargetFormat = "pdf"
vim.g.Tex_ViewRule_pdf = "zathura"

map("n", "<localleader>q", "<cmd>!zathura template.pdf &<CR>", opts)
