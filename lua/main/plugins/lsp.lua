return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    init = function()
        vim.keymap.set("n", "grh", "<CMD>lua vim.lsp.buf.hover()<CR>", { desc = "Show hover information" })
    end
}
