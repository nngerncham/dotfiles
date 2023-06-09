require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")

local dap = require("dap")
local dapui = require("dapui")
dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

local map = vim.keymap.set

map("n", "<leader>dbb", "<cmd>DapToggleBreakpoint<CR>", { noremap = true, desc = "Toggle breakpoint on line" })
map("n", "<leader>dbt", "<cmd>DapTerminate<CR>", { noremap = true, desc = "Terminate DAP" })

map("n", "<leader>dbsi", "<cmd>DapStepInto<CR>", { noremap = true, desc = "Step into" })
map("n", "<leader>dbso", "<cmd>DapStepOver<CR>", { noremap = true, desc = "Step over" })
map("n", "<leader>dbse", "<cmd>DapStepOut<CR>", { noremap = true, desc = "Step out of" })

map("n", "<leader>dpr", function()
	require("dap-python").test_method()
end, { desc = "Run Python test" })
