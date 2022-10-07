return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use { "ellisonleao/gruvbox.nvim" }

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

  use { "williamboman/mason.nvim" }
  use "neovim/nvim-lspconfig"
	use "lukas-reineke/lsp-format.nvim"

	use { 'ms-jpq/coq_nvim', branch = 'coq' }

	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

	use 'nvim-treesitter/nvim-treesitter'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
      }
end)
