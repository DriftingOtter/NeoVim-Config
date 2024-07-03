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

end)
