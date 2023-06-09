local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(_, bufnr)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

    vim.keymap.set("n", "gd", vim.lsp.definition, {})
    vim.keymap.set("n", "gi", vim.lsp.implementation, {})
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

require("rust-tools").setup({
    server = {
        standalone = false,
        on_attach = on_attach,
        capabilities = capabilities,
    },
    tools = {
        inlay_hints = {
            parameter_hints_prefix = ": ",
            other_hints_prefix = ": ",
        },
    },
})

vim.g.rustfmt_autosave = 1 
