return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
			fps = 60,
      render = "wrapped-compact",
      stages = "slide",
			timeout = 1000,
		})
		vim.keymap.set("n", "<leader>n", ":Telescope notify<CR>", {})
	end,
}
