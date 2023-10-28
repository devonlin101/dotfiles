local map = vim.keymap.set
local opts = { noremap = true, silent = true }
-- keybindings
map("n", "<cr>", "o<esc>", opts)
--map('n', '<space>', 'i<space><esc>', opts)

-- bufferline keybindings
map("n", "<leader>[", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<leader>]", "<Cmd>BufferLineCycleNext<CR>", opts)
map("n", "[]", "<Cmd>BufferLineMoveNext<CR>", opts)
map("n", "][", "<Cmd>BufferLineMovePrev<CR>", opts)
map("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
map("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
map("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
map("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
map("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
map("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
map("n", "<leader>0", "<Cmd>BufferLineCloseOthers <CR>", opts)
map("n", "<leader><leader>", "<Cmd>:bd<CR>", opts)

--telescope keybinding
local builtin = require("telescope.builtin")
map("n", "<space><space>", builtin.find_files, opts)
map("n", "<space>b", builtin.buffers, opts)
map("n", "<space>o", builtin.oldfiles, opts)
map("n", "<space>g", builtin.live_grep, opts)
map("n", "<space>m", builtin.marks, opts)
map("n", "<space>t", builtin.treesitter, opts)
map("n", "<space>f", ":Telescope file_browser<CR>", opts)

-- trouble plugin keybindings
map("n", "<space>q", "<Cmd>:TroubleToggle<CR>", opts)

--leap.nvim keybindings
map("n", "f", "<Plug>(leap-forward-to)")
map("n", "F", "<Plug>(leap-backward-to)")

map("n", "gD", vim.lsp.buf.declaration, opts)
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "K", vim.lsp.buf.hover, opts)
