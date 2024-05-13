local function codeium()
	return "󱃖 Codeium:" .. vim.fn["codeium#GetStatusString"]()
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "pywal",
				globalstatus = true,
				section_separators = "",
				component_separators = "",
				disabled_filetypes = {
					"alpha",
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "diff", "diagnostics" },
				lualine_x = { codeium, "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = {
				"mason",
				"nvim-tree",
				"nvim-dap-ui",
				"toggleterm",
			},
		})
	end,
}
