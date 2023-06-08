local rt = require("rust-tools")

rt.setup({
    server = { standalone = false, },
    tools = {
        inlay_hints = {
            parameter_hints_prefix = ": ",
            other_hints_prefix = ": ",
        },
    },
})
