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

    -- tab line
    use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

    -- status line
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        config = function()
            require("lualine").setup()
        end,
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

    -- git
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
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
