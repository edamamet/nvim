-- TABS
vim.o.tabstop     = 4
vim.o.expandtab   = true
vim.o.softtabstop = 4
vim.o.shiftwidth  = 4

-- NUMBERS
vim.o.number         = true
vim.o.relativenumber = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- CLIPBOARD
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from system clipboard after cursor" })
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]], { desc = "Paste from system clipboard before cursor" })
