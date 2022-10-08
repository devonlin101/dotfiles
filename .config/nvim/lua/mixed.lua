require('Comment').setup()
require("mason").setup()
require("null-ls").setup()
require("nvim-autopairs").setup {} 
require('gitsigns').setup()
require 'hop'.setup()
require("bufferline").setup {}
require("mason-null-ls").setup({
  ensure_installed = { 'gitlint','hadolint','prettier','jq','stylua','shellcheck','vim',''},
  automatic_installation = true,
})
require("mason-lspconfig").setup({
	ensure_installed = { "bashls", "dockerls", "tsserver", "sumneko_lua", "marksman", "prismals", "rust_analyzer", "tailwindcss" },
  automatic_installation = true,
})
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

