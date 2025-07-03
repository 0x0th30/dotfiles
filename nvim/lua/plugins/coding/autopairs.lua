return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		local autopairs = require("nvim-autopairs")
		autopairs.setup({
			check_ts = true,
			enable_check_bracket_line = false,
		})

		-- Integration with nvim-cmp
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp_status_ok, cmp = pcall(require, "cmp")
		if cmp_status_ok then
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end
	end,
}
