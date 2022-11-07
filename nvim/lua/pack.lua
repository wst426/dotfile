return require("packer").startup(function(use)
    -- package manager
    use("wbthomason/packer.nvim")

    -- theme
    use("nvim-tree/nvim-web-devicons")
    use("shaunsingh/nord.nvim")

    -- file explorer
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { "nvim-lua/plenary.nvim" },
    })
    use({
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    -- motion
    use("ggandor/leap.nvim")

    -- edit
    use("windwp/nvim-autopairs")

    -- syntax
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })

    -- lsp
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")

    -- completion
    use("hrsh7th/cmp-nvim-lsp")

    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")

    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
end)
