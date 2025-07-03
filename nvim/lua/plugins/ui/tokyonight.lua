return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,  -- make sure to load early
  config = function()
    require("tokyonight").setup({
      style = "night",       -- night, storm, day, moon
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
      sidebars = { "qf", "help", "terminal", "packer" },
      day_brightness = 0.3,
      on_highlights = function(hl, c)
        -- Custom highlight overrides here (optional)
      end,
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
