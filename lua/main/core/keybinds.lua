-- remaps
local keymap = vim.keymap
keymap.set('n', 'j', 'gj', { desc = 'move down a visual line' })
keymap.set('n', 'k', 'gk', { desc = 'move down a visual line' })
keymap.set('v', 'j', 'gj', { desc = 'move selection down a visual line' })
keymap.set('v', 'k', 'gk', { desc = 'move selection down a visual line' })
keymap.set("n", "grD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = 'go to declaration', noremap = true, silent = true })
keymap.set("n", "grd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = 'go to declaration', noremap = true, silent = true })
