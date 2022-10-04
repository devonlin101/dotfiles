-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	use "lukas-reineke/indent-blankline.nvim"
	use 'kyazdani42/nvim-web-devicons'
	use 'feline-nvim/feline.nvim'
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use 'sainnhe/everforest'
	use 'Luxed/ayu-vim'
	use 'hkupty/nvimux'
	use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
	}
	use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
	use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
--	use {
  --'romgrk/barbar.nvim',
  --requires = {'kyazdani42/nvim-web-devicons'}
--}
	use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
	use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

end)
