local options = {
	-- termguicolors = true,
	backup = false,
	number = true,
	showmode = false,
	relativenumber = true,
	mouse = "a",
	ignorecase = true,
	smartcase = true,
	hlsearch = false,
	wrap = true,
	breakindent = true,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	scrolloff = 4,
	signcolumn = "yes",
	syntax = "ON",
	tgc = true,
	ph = 15,
	pumwidth = 10,
	incsearch = true,
	splitright = true,
	splitbelow = true,
	linebreak = true,
	hidden = true,
	timeoutlen = 1000,
	updatetime = 300,
	ttimeoutlen = 0,
	swapfile = false,
	cursorline = true,
	foldmethod = "expr",
	foldexpr = "nvim_treesitter#foldexpr()",
	foldenable = false,
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

-- colorscheme
--vim.cmd([[ colorscheme ayu ]])

-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])
-- let g:everforest_transparent_background = '2'
-- let g:everforest_current_word = 'bold'
-- let g:everforest_better_performance = '1'

--format on save
--cancel auto fold method when open documents
-- vim.cmd [[ autocmd BufReadPost,FileReadPost * normal zR ]]
--auto fold
---WORKAROUND
-- vim.api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter' }, {
-- 	group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
-- 	callback = function()
-- 		vim.opt.foldmethod = 'expr'
-- 		vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'
-- 	end
-- })
--
