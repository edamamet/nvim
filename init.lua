vim.cmd("colorscheme catppuccin")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set smarttab")

vim.cmd("set clipboard=unnamedplus")

-- lsp
vim.pack.add( { 'https://github.com/neovim/nvim-lspconfig' })
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
})
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.diagnostic.config({ virtual_text = true })
vim.keymap.set('n', 'grh', vim.lsp.buf.hover)

-- oil
vim.pack.add( { 'https://github.com/stevearc/oil.nvim' })
require('oil').setup()
vim.keymap.set('n', '-', '<cmd>Oil<cr>')
