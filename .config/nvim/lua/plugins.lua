local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = ({

    'kyazdani42/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
    'freddiehaddad/feline.nvim',
    'neanias/everforest-nvim',
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
  },
},
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
}

 --   'MunifTanjim/prettier.nvim',
 --   'L3MON4D3/LuaSnip',
 --   'hrsh7th/cmp-nvim-lsp',
 --   'hrsh7th/cmp-buffer',
 --   'hrsh7th/cmp-path',
 --   'hrsh7th/cmp-cmdline',
 --   'saadparwaiz1/cmp_luasnip',
  --  'williamboman/mason.nvim',
  --  'williamboman/mason-lspconfig.nvim',
 --   'jose-elias-alvarez/null-ls.nvim',
 --   'jayp0521/mason-null-ls.nvim',
 --   'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
 --   'numToStr/Comment.nvim',
 --   'windwp/nvim-autopairs',
 --   'hrsh7th/nvim-cmp',
 --   "kylechui/nvim-surround",
 --   "nvim-lua/plenary.nvim",
 --   "rafamadriz/friendly-snippets",
-- plugins/telescope.lua:
 --{
 --   'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                              , branch = '0.1.x',
 --     dependencies = { 'nvim-lua/plenary.nvim' }
   -- },
   --{
 --   "folke/trouble.nvim",
   -- dependencies = {"nvim-tree/nvim-web-devicons"},
 -- },
 -- {
--  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
--  },
})

local opts = {}

require("lazy").setup(plugins, opts)

