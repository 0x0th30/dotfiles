return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    {
      "nvim-telescope/telescope-file-browser.nvim",
      config = function()
        require("telescope").load_extension("file_browser")
      end,
    },
  },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Help tags" },
    { "<leader>fe", "<cmd>Telescope file_browser<cr>", desc = "File browser" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 10,
        file_ignore_patterns = { "node_modules", ".git/" },
      },
      extensions = {
        file_browser = {
          hijack_netrw = true,
        },
      },
    })
  end,
}
