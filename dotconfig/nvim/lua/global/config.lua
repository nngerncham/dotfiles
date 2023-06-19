local opt = vim.opt

-- appearance
opt.syntax = "on"
opt.background = "dark"
opt.cursorline = true
opt.nu = true
opt.relativenumber = true

-- colors
vim.cmd.colorscheme("kanagawa")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
opt.termguicolors = true

-- indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.wrap = true
opt.linebreak = true

-- backups
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- search
opt.incsearch = true

-- misc
opt.scrolloff = 5
opt.updatetime = 50
