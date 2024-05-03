return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
	},
	config = function()
		require("barbecue").setup({
			show_dirname = false,
			show_basename = false,
		})
	end,
}
