
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
expandtab = false,
scrolloff = 4,
signcolumn = 'yes',
syntax = "ON",
termguicolors = true,
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



