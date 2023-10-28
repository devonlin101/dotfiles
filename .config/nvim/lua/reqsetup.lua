
--require'hop'.setup()
require('mason').setup()
require('Comment').setup()
require("ayu").colorscheme()
require("bufferline").setup({})
require('gitsigns').setup()
require("mason-lspconfig").setup({
 ensure_installed = {"clangd", "cmake", "bashls", "dockerls", "tsserver", "lua_ls", "marksman", "prismals", "rust_analyzer",
   "tailwindcss" },
 automatic_installation = true,
})
require("ibl").setup({
  scope ={
    enabled = true,
    highlight = {"Function","Label"},
  }
})
require('telescope').setup({
  defaults = {
layout_strategy = "vertical",
    file_ignore_patterns = {
      "node_modules", "build", "dist", "yarn.lock", ".gitignore"
    }
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
    }
  }
})
require('telescope').load_extension "file_browser"
require('telescope').load_extension('fzf')

-- require("everforest").load()
---- hide lsp inlint error messages
--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--  vim.lsp.diagnostic.on_publish_diagnostics, {
--  virtual_text = false
--}
--)
--
