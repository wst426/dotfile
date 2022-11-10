-- nvim-autopairs
require("nvim-autopairs").setup({})

-- leap
require("leap").add_default_mappings()

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- treesitter
require("nvim-treesitter.configs").setup({
    ensure_installer = { "lua" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
})

-- nvim-tree
require("nvim-tree").setup({
    -- remove_keymaps = true,
    view = {
        number = true,
        relativenumber = true,
        width = 60,
        mappings = {
            list = {
                { key = "q", action = "close" },
                { key = "<CR>", action = "edit" },
                { key = "J", action = "next_sibling" },
                { key = "K", action = "prev_sibling" },
                { key = "<C-}>", action = "cd" },
                { key = "E", action = "expand_all" },
                { key = "W", aciton = "collapse_all" },
                { key = "n", action = "create" },
                { key = "<C-t>", action = "tabnew" },
                { key = "?", action = "toggle_help" },
            },
        },
    },
})

vim.keymap.set("n", "<leader>r", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>t", ":NvimTreeFindFile<CR>")
