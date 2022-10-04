local map = vim.keymap.set
local opts = {noremap = true, silent =true }

-- neovim tree folders
map('n','<space>e', '<cmd>:NvimTreeFindFileToggle<cr>',opts)

-- bufferline keybinding

-- Move to previous/next
map('n','[[', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n',']]', '<Cmd>BufferLineCycleNext<CR>', opts)
-- Re-order to previous/next
map('n', '[]', '<Cmd>BufferLineMoveNext<CR>', opts)
map('n', '][', '<Cmd>BufferLineMovePrev<CR>', opts)
-- Goto buffer in position...
map('n', ']1', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
map('n', ']2', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
map('n', ']3', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
map('n', ']4', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
map('n', ']5', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', ']6', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
map('n', ']c', '<Cmd>:bd<CR>', opts)
-- Pin/unpin buffer
--map('n', '[p', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
--map('n', '[c', '<Cmd>BufferClose<CR>', opts)


--telescope keybinding

