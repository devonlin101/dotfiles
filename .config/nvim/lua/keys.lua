local map = vim.keymap.set
<<<<<<< HEAD

local builtin = require('telescope.builtin')
=======
--local builtin = require('telescope.builtin')
>>>>>>> b76b781ce60082de1db9b7f2db4b46b538721e16
local opts = { noremap = true, silent = true }

-- keybindings
map('n', '<cr>', 'o<esc>', opts)
map('n', '<space>', 'i<space><esc>', opts)

--neotree key bindings

-- neovim tree folders
--map('n', '<space>e', '<cmd>:NvimTreeFindFileToggle<cr>', opts)
--vim.api.nvim_set_keymap(
--  "n",
--  "<space>fb",
--  ":Telescope file_browser<cr>",
--  { noremap = true }
--)

-- bufferline keybinding
<<<<<<< HEAD
map('n', '<leader>-', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<leader>=', '<Cmd>BufferLineCycleNext<CR>', opts)
map('n', '[]', '<Cmd>BufferLineMoveNext<CR>', opts)
map('n', '][', '<Cmd>BufferLineMovePrev<CR>', opts)
map('n', '1<leader>', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
map('n', '2<leader>', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
map('n', '3<leader>', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
map('n', '4<leader>', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
map('n', '5<leader>', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', '6<leader>', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
map('n', '<leader><leader>', '<Cmd>:bd<CR>', opts)
-- place this in one of your configuration file(s)
map('n', 'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>"
  , opts)
map('n', 'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>"
  , opts)
--map('n', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>", opts)
--map('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>", opts)

--telescope keybinding
-- map('n', '<space><space>', builtin.find_files, opts)
-- map('n', '<space>b', builtin.buffers, opts)
-- map('n', '<space>o', builtin.oldfiles, opts)
-- map('n', '<space>g', builtin.live_grep, opts)
-- map('n', '<space>m', builtin.marks, opts)
=======
--map('n', '[[', '<Cmd>BufferLineCyclePrev<CR>', opts)
--map('n', ']]', '<Cmd>BufferLineCycleNext<CR>', opts)
--map('n', '[]', '<Cmd>BufferLineMoveNext<CR>', opts)
--map('n', '][', '<Cmd>BufferLineMovePrev<CR>', opts)
--map('n', '1<leader>', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
--map('n', '2<leader>', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
--map('n', '3<leader>', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
--map('n', '4<leader>', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
--map('n', '5<leader>', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
--map('n', '6<leader>', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
--map('n', '<leader><leader>', '<Cmd>:bd<CR>', opts)
-- hop keybindings place this in one of your configuration file(s)
--local hop = require('hop')
--local directions = require('hop.hint').HintDirection
--vim.keymap.set('', 'f', function()
--  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
--end, { remap = true })
--vim.keymap.set('', 'F', function()
--  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
--end, { remap = false })
-- vim.keymap.set('', 't', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
-- vim.keymap.set('', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})
--telescope keybinding
--map('n', '<space><space>', builtin.find_files, opts)
--map('n', '<space>b', builtin.buffers, opts)
--map('n', '<space>o', builtin.oldfiles, opts)
--map('n', '<space>g', builtin.live_grep, opts)
--map('n', '<space>m', builtin.marks, opts)
>>>>>>> b76b781ce60082de1db9b7f2db4b46b538721e16
--map('n', '<space>t', builtin.treesitter, opts)

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--map('n', '<space>d', vim.diagnostic.open_float, opts)
<<<<<<< HEAD
-- map('n', '[d', vim.diagnostic.goto_prev, opts)
-- map('n', ']d', vim.diagnostic.goto_next, opts)
map('n', '<space>q', '<Cmd>:TroubleToggle<CR>', opts)

--luasnip keybindings
=======
--map('n', '[d', vim.diagnostic.goto_prev, opts)
--map('n', ']d', vim.diagnostic.goto_next, opts)
--map('n', '<space>q', '<Cmd>:TroubleToggle<CR>', opts)
>>>>>>> b76b781ce60082de1db9b7f2db4b46b538721e16

--nice-reference keybindings
--map("n", "gr", "<cmd>lua require('nice-reference').references()<CR>")
