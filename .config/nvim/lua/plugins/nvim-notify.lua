return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
			fps = 60,
			render = "compact",
			timeout = 1000,
		})
		vim.keymap.set("n", "np", ":Telescope notify<CR>", {})
	end,
}
