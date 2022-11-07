require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "tsserver" },
})
local lspconfig = require("lspconfig")

-- lua
lspconfig["sumneko_lua"].setup({
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})

-- typescript
lspconfig["tsserver"].setup({})
