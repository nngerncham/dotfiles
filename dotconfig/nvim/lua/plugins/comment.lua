return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()
    local ft = require("Comment.ft")
    ft({ "c", "cpp", "h", "go", "rust" }, "// %s")
    ft({ "yaml", "toml", "python", "graphql" }, "# %s")
  end,
  lazy = false,
}
