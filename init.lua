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

-- roslyn
vim.pack.add( { 'https://github.com/https://github.com/seblyng/roslyn.nvim' })
require('roslyn').setup()

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

require('blink.cmp').setup()

-- fzf
vim.pack.add({{
    src = 'https://github.com/ibhagwan/fzf-lua',
}})
require('fzf-lua').setup()
vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua git_files<cr>')

-- persistence
vim.pack.add({{
    src = 'https://github.com/folke/persistence.nvim',
}})
require('persistence').setup()
-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end)

-- select a session to load
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end)

-- load the last session
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end)
