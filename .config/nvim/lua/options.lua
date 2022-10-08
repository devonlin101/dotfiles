local options = {
	backup = false,
	number = true,
	showmode = false,
	relativenumber = true,
	mouse = 'a',
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
	signcolumn = 'yes',
	syntax = "ON",
	tgc = true,
  ph = 15,
	incsearch = true,
	splitright = true,
	splitbelow = true,
	linebreak = true,
	hidden = true,
	timeoutlen = 1000,
	updatetime = 300,
	ttimeoutlen = 0,
}


for key, value in pairs(options) do
	vim.opt[key] = value
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd [[ colorscheme ayu]]
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

--cancel auto fold method when open documents
vim.cmd [[ autocmd BufReadPost,FileReadPost * normal zR ]]
--auto fold 
---WORKAROUND
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter' }, {
	group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
	callback = function()
		vim.opt.foldmethod = 'expr'
		vim.opt.foldexpr   = 'nvim_treesitter#foldexpr()'
	end
})

