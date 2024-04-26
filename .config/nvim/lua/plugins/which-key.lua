return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		require("which-key").setup({
			window = {
				border = "single",
				margin = { 2, 0, 2, 0 },
				padding = { 1, 1, 1, 1 },
			},
		})
	end,
}
