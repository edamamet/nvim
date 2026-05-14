vim.cmd("colorscheme catppuccin")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set smarttab")

vim.cmd("set clipboard=unnamedplus")

vim.cmd("map j gj")
vim.cmd("map k gk")

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
vim.keymap.set('n', 'gre', function() vim.diagnostic.open_float() end)

-- oil
vim.pack.add( { 'https://github.com/stevearc/oil.nvim' })
require('oil').setup({
    view_options = {
        show_hidden = true,
    },
})
vim.keymap.set('n', '-', '<cmd>Oil<cr>')

--transparency
vim.api.nvim_set_hl(0, 'Normal', {bg = 'none'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg = 'none'})

-- blink
vim.pack.add({{
    src = 'https://github.com/saghen/blink.cmp',
    version = 'v1'
}})
require('blink.cmp').setup({
    keymap = { preset = 'enter' },
})
