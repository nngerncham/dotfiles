-- Debugger for C++ and Rust
require("dap").adapters.lldb = {
    type = "executable",
    command = "usr/bin/lldb",
    name = "lldb",
}

local lldb = {
    name = "Launch lldb",
    type = "lldb",
    request = "launch",
    program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
}

require("dap").configurations.rust = { lldb }
require("dap").configurations.cpp = { lldb }

-- Key mappings
vim.keymap.set("n", "<leader>dbc", function()
    require("dap").continue()
end)
vim.keymap.set("n", "<leader>dbos", function()
    require("dap").step_over()
end)
vim.keymap.set("n", "<leader>dbis", function()
    require("dap").step_into()
end)
vim.keymap.set("n", "<Leader>dbb", function()
    require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<Leader>dbsb", function()
    require("dap").set_breakpoint()
end)

-- UI
require("neodev").setup({
    library = {
        plugins = { "nvim-dap-ui" },
        types = true,
    },
})
require("dapui").setup()
require("nvim-dap-virtual-text").setup()
