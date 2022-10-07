vim.cmd [[ colorscheme ayu]]
vim.cmd [[set completeopt=menu,menuone,noselect]]

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- vim.opt.foldmethod     = 'expr'
-- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
---WORKAROUND
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter' }, {
	group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
	callback = function()
		vim.opt.foldmethod = 'expr'
		vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'
	end
})
require('Comment').setup()
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "bashls", "dockerls", "tsserver", "sumneko_lua", "marksman", "prismals", "rust_analyzer",
		"tailwindcss" }
})



require('gitsigns').setup()
require 'hop'.setup()
require("bufferline").setup {}
require("indent_blankline").setup {
	-- for example, context is off by default, use this to turn it on
	show_current_context = true,
	show_current_context_start = true,
}

-- nvim-tree setup 
require("nvim-tree").setup({ view = { width = 25 }, actions = { open_file = { quit_on_open = true } } })

-- prettier setup
local prettier = require("prettier")

prettier.setup({
	bin = 'prettier', -- or `'prettierd'` (v0.22+)
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
		"lua"
	},
})

