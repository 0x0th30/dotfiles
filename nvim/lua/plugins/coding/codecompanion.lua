return {
	{
		"olimorris/codecompanion.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown", "codecompanion" },
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			experimental = {
				check_rtp = false,
			},
			preview = {
				filetypes = { "markdown", "codecompanion" },
				ignore_buftypes = {},
			},
		},
	},
	{
		"echasnovski/mini.diff",
		config = function()
			local diff = require("mini.diff")
			diff.setup({
				-- Disabled by default
				source = diff.gen_source.none(),
			})
		end,
	},
}
