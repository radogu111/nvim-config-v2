vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'tjdevries/colorbuddy.nvim'
  use 'svrana/neosolarized.nvim'
  --
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  --
  use 'kyazdani42/nvim-web-devicons'
  use {'akinsho/bufferline.nvim', tag = "v2.*"}
  use 'nvim-lualine/lualine.nvim'
  --
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0'
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  --
  use 'norcalli/nvim-colorizer.lua'
  --
  use 'jose-elias-alvarez/null-ls.nvim'
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use 'onsails/lspkind.nvim'
end)
