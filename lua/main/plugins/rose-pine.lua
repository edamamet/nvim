-- lua/plugins/rose-pine.lua
return {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
        variant = "moon", -- main, moon, dawn
        palette = {
            dawn = {
                base = "#F8F6F0",
            },
        },
    },
    init = function()
        vim.cmd("color rose-pine")
    end
}
