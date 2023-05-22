local opt = vim.opt

-- appearance
opt.syntax = "on"
opt.background = "dark"
opt.cursorline = true

vim.cmd[[set t_Co=256]]
vim.cmd[[colorscheme kanagawa-dragon]]
vim.cmd[[set cc=80]]
vim.cmd[[set number relativenumber]]

-- indentation
opt.tabstop = 4
opt.shiftwidth = 4
vim.cmd[[set autoindent]]
vim.cmd[[set smartindent]]
vim.cmd[[set wildmode=longest,list]]
vim.cmd[[filetype plugin indent on]]

vim.cmd[[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
