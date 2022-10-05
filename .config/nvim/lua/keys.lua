local map = vim.keymap.set
local builtin = require('telescope.builtin')
local opts = {noremap = true, silent =true }

-- neovim tree folders
map('n','<space>e', '<cmd>:NvimTreeFindFileToggle<cr>',opts)

-- bufferline keybinding
map('n','[[', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n',']]', '<Cmd>BufferLineCycleNext<CR>', opts)
map('n', '[]', '<Cmd>BufferLineMoveNext<CR>', opts)
map('n', '][', '<Cmd>BufferLineMovePrev<CR>', opts)
map('n', ']1', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
map('n', ']2', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
map('n', ']3', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
map('n', ']4', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
map('n', ']5', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', ']6', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
map('n', ']c', '<Cmd>:bd<CR>', opts)
-- place this in one of your configuration file(s)
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", opts)
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", opts)
map('n', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>", opts)
map('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>", opts)

--telescope keybinding
map('n', '<space><space>', builtin.find_files, opts)
map('n', '<space>b', builtin.buffers, opts)
map('n', '<space>o', builtin.oldfiles, opts)
map('n', '<space>g', builtin.live_grep, opts)
map('n', '<space>m', builtin.marks, opts)
map('n', '<space>c', builtin.command_history, opts)

--lspconfig keybinding
vim.keymap.set('n', '<space>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

