-- remaps
local keymap = vim.keymap
keymap.set('n', 'j', 'gj', { desc = 'move down a visual line' })
keymap.set('n', 'k', 'gk', { desc = 'move down a visual line' })
keymap.set('v', 'j', 'gj', { desc = 'move selection down a visual line' })
keymap.set('v', 'k', 'gk', { desc = 'move selection down a visual line' })
