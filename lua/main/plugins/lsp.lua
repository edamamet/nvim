return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {
            registries = {
                "github:mason-org/mason-registry",
                "github:Crashdummyy/mason-registry",
            },
        } },
        "neovim/nvim-lspconfig",
        { 
            "seblyng/roslyn.nvim",
            ---@module 'roslyn.config'
            ---@type RoslynNvimConfig
            opts = {},
        }
    },
    init = function()
        vim.keymap.set("n", "grh", "<CMD>lua vim.lsp.buf.hover()<CR>", { desc = "Show hover information" })
    end
}
