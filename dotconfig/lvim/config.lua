-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- plugins
lvim.plugins = {
  { "rebelot/kanagawa.nvim" },
  { "alexmozaidze/palenight.nvim" },
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

-- options
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.textwidth = 80

lvim.format_on_save.enabled = true
