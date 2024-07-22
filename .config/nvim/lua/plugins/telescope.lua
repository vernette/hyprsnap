return {
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				pickers = {
					find_files = { hidden = true },
					colorscheme = {
						enable_preview = true,
						ignore_builtins = true,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				defaults = {
					prompt_prefix = " ",
					selection_caret = "󱞩 ",
					path_display = { "smart" },
					layout_config = {
						vertical = {
							preview_cutoff = 0,
							preview_height = 0.5,
						},
						horizontal = {
							preview_cutoff = 0,
							preview_width = 0.6,
						},
					},
				},
			})
			telescope.load_extension("ui-select")
		end,
	},
}
