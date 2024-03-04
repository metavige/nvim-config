-- DEFAULT VIM SETTINGS

-- Packer plugin manager config
require('packer').startup(function(use)

  -- packer.vim https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'

  -- mason.vim https://github.com/williamboman/mason.nvim
  -- https://github.com/williamboman/mason-lspconfig.nvim
  -- LSP/DSP manager
  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    },
  }

  -- alpha-nvim https://github.com/goolord/alpha-nvim
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').opts)
    end
  }
  
  -- AutoCompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- git-gutter.nvim 
  use 'airblade/vim-gitgutter'
  
  -- lualine
  use {
    'hoob3rt/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- nvim-visual-multi
  use 'mg979/vim-visual-multi'

  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- FZF for telescope
  --use {
  --  'nvim-telescope/telescope-fzf-native.nvim',
  --  run = 'make'
  -- }
end)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '