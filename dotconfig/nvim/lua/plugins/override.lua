return {
  -- add colorschemes
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "alexmozaidze/palenight.nvim" },

  -- side-bar
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      window = {
        width = 30,
      },
    },
  },

  -- set the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "palenight",
    },
  },
}
