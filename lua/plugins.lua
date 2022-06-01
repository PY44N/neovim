return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { "ellisonleao/gruvbox.nvim" }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    use {'ms-jpq/coq_nvim', branch = 'coq'}

    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

    use 'nvim-treesitter/nvim-treesitter'

    use "lukas-reineke/lsp-format.nvim"

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
end)