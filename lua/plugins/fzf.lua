return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  keys = {
        { "<leader>ff", "<CMD>lua FzfLua.files()<CR>", mode = "n", desc = "Find Files", },
  },
  ---@diagnostic enable: missing-fields
}
