vim.g.coc_global_extensions = {
  -- Python
  "coc-pyright",

  -- C/C++
  "coc-clangd",

  -- web dev stuff
  "coc-prettier",
  "coc-json",
  "coc-eslint",
  "coc-tsserver",

  -- Rust, my beloved
  "coc-rust-analyzer",

  -- Java
  "coc-java",

  -- LaTeX
  "coc-snippets",
  "coc-vimtex",

  -- utils
  "coc-pairs",
}

vim.cmd[[inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]]
