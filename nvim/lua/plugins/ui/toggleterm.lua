return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 15,
    open_mapping = [[<C-\>]],
    shade_terminals = true,
    direction = "float", -- could be "horizontal" or "vertical"
    float_opts = {
      border = "curved",
    },
  },
  keys = {
    { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
}

