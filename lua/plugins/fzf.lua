return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    opts = function()
        local actions = require("fzf-lua.actions")
        return {
            actions = {
                files = {
                    true, -- inherit the default actions
                    -- push the current position onto the tagstack so <C-t> jumps back
                    ["enter"] = function(selected, opts)
                        local from = { vim.fn.bufnr(), vim.fn.line("."), vim.fn.col("."), 0 }
                        vim.fn.settagstack(vim.fn.win_getid(), { items = { { tagname = "fzf-lua", from = from } } }, "t")
                        actions.file_edit_or_qf(selected, opts)
                    end,
                },
            },
        }
    end,
    keys = {
        { "<leader>ff", "<CMD>lua FzfLua.files()<CR>", mode = "n", desc = "Find Files", },
        { "<leader>fg", "<CMD>lua FzfLua.live_grep()<CR>", mode = "n", desc = "Live Grep", },
    },
    ---@diagnostic enable: missing-fields
}
