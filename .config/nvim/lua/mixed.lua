local null_ls = require('null-ls')
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local completion = null_ls.builtins.completion
local sources = {
  code_actions.eslint_d,
  code_actions.shellcheck,
  completion.luasnip,
  completion.spell,
  diagnostics.alex,
  diagnostics.eslint_d,
  diagnostics.hadolint,
  diagnostics.shellcheck,
  diagnostics.tidy,
  diagnostics.tsc,
  formatting.beautysh,
  formatting.codespell,
  formatting.eslint_d,
  formatting.lua_format,
  formatting.prettier,
  formatting.prettier_d_slim,
  formatting.prismaFmt,
  formatting.rustfmt
}

require('Comment').setup()
require("mason").setup()
require("null-ls").setup()
require("nvim-autopairs").setup {}
require('gitsigns').setup()
require 'hop'.setup()
require("bufferline").setup {}
require('telescope').setup {
  pickers = {
    find_files = {
      -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
      find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
    },
  },
}
require("mason-null-ls").setup({
  ensure_installed = { 'prettier', 'jq', 'stylua', 'shellcheck', 'vint' },
  automatic_installation = true,
})
require("null-ls").setup({
  sources = sources,
})
require("mason-lspconfig").setup({
  ensure_installed = { "bashls", "dockerls", "tsserver", "sumneko_lua", "marksman", "prismals", "rust_analyzer",
    "tailwindcss" },
  automatic_installation = true,
})
require("indent_blankline").setup {
  -- for example, context is off by default, use this to turn it on
  show_current_context = true,
  -- show_current_context_start = true,
}

-- nvim-tree setup
require("nvim-tree").setup({ view = { width = 25 }, actions = { open_file = { quit_on_open = true } } })


-- hide lsp inlint error messages
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false
}
)

-- -- format on save
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.format({ bufnr = bufnr,
            filter = function(client)
              return client.name == "null-ls"
            end })
        end,
      })
    end
  end,
})
-- prettier setup
require("prettier").setup({
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
    "lua",
    "rust"
  },
})
