vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	-- Packer can manage itself
  	use 'wbthomason/packer.nvim'

	----------- THEMES -----------
	use { "ellisonleao/gruvbox.nvim" }
	use { 'flazz/vim-colorschemes' }
	use { 'RRethy/base16-nvim' }
	use { 'vim-airline/vim-airline' }
	use { 'vim-airline/vim-airline-themes' }

	----------- TELESCOPE -----------
	use 'nvim-tree/nvim-web-devicons'
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {
    	"nvim-telescope/telescope-file-browser.nvim",
    	requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}

	use {'andrew-george/telescope-themes'}

	----------- TREE SITTER -----------
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('mbbill/undotree')
	use {
  	  'VonHeikemen/lsp-zero.nvim',
  	  branch = 'v2.x',
  	  requires = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},             -- Required
    	{                                      -- Optional
      		'williamboman/mason.nvim',
      		run = function()
        	pcall(vim.api.nvim_command, 'MasonUpdate')
      		end,
    	},

		{'williamboman/mason-lspconfig.nvim'},
		{'williamboman/mason.nvim'},

    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},     -- Required
    	{'hrsh7th/cmp-nvim-lsp'}, -- Required
   		{'L3MON4D3/LuaSnip'},     -- Required
 	  }
	}

	----------- BUFFERS -----------
	-- use {'j-morano/buffer_manager.nvim'}

end)
