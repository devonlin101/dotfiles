-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("plugins")
require("reqsetup")
require("keys")
require("felineconfig")
require("lspsettings")
require("nvimcmp")

