--require'hop'.setup()
require("mason").setup()
require("Comment").setup()
-- require("everforest").load()
require("ayu").colorscheme()
require("bufferline").setup({})
require("gitsigns").setup()
require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	renderer = {
		highlight_opened_files = "all",
		indent_markers = {
			enable = true,
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"cmake",
		"bashls",
		"dockerls",
		"tsserver",
		"lua_ls",
		"marksman",
		"prismals",
		"rust_analyzer",
		"tailwindcss",
	},
	automatic_installation = true,
})
require("ibl").setup({
	scope = {
		enabled = true,
		highlight = { "Function", "Label" },
	},
})
require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",
		file_ignore_patterns = {
			"node_modules",
			"build",
			"dist",
			"yarn.lock",
			".gitignore",
		},
	},
	pickers = {
		find_files = {
			-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
			find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
		},
	},
	extensions = {
		file_browser = {
			-- cwd = vim.g.documentos,
			hijack_netrw = true,
			select_buffer = true,
			hidden = true,
			depth = 2,
		},
	},
})
require("telescope").load_extension("file_browser")
require("telescope").load_extension("fzf")

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	-- ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "typescript", "rust" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	-- sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	-- auto_install = true,

	-- List of parsers to ignore installing (or "all")
	-- ignore_install = { "javascript" },

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		enable = true,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		-- disable = { "c", "rust" },
		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})
---- hide lsp inlint error messages
--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--  vim.lsp.diagnostic.on_publish_diagnostics, {
--  virtual_text = false
--}
--)
--
