vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  -- Telescope
  use {'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} } }

  -- Gruvbox Theme
  use {"ellisonleao/gruvbox.nvim"}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Undo Tree
  use {'mbbill/undotree'}

  -- Vim Fugitive
  use {'tpope/vim-fugitive'}

  -- LSP Zero
  use {
      'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
     }
  }

  -- Neovim Lsp
  use {
      'neovim/nvim-lspconfig',
	  requires = {
		  -- LSP Support
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- NeoVim-Orgmode
  use {'nvim-orgmode/orgmode', 
  config = function()
      require('orgmode').setup{}
  end}

  -- Orgmode bullets
  use {'akinsho/org-bullets.nvim'}

  -- Headlines (Orgmode section highlighting)
  use {"lukas-reineke/headlines.nvim"}

  -- Auto Pairs
  use {'jiangmiao/auto-pairs'}

  -- CoC
  use {
      'neoclide/coc.nvim',
      branch = 'release'
  }


end)
