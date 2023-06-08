require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "gopls",
        "pylsp",
        "texlab",
    }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(_, bufnr)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

    vim.keymap.set("n", "gd", vim.lsp.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local util = require("lspconfig/util")

-- Lua
require("lspconfig").lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities
})

-- Python
require("lspconfig").pylsp.setup({
    on_attach = on_attach,
    capabilities = capabilities
})

-- LaTeX
require("lspconfig").texlab.setup({
    on_attach = on_attach,
    capabilities = capabilities
})
