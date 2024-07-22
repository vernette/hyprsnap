return {
	{
		"Bekaboo/deadcolumn.nvim",
		lazy = false,
		config = function()
			require("deadcolumn").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		lazy = false,
		main = "ibl",
		config = function()
			local highlight = { "CursorColumn" }
			require("ibl").setup({
				indent = {
					highlight = highlight,
					char = "│",
					tab_char = "│",
				},
				whitespace = {
					highlight = highlight,
					remove_blankline_trail = false,
				},
				scope = { enabled = false },
				exclude = {
					filetypes = {
						"help",
						"alpha",
						"trouble",
						"lazy",
						"mason",
						"notify",
						"toggleterm",
					},
				},
			})
		end,
	},
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			require("notify").setup({
				background_colour = "#000000",
				render = "wrapped-compact",
				stages = "slide",
				timeout = 1000,
			})
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = { "MunifTanjim/nui.nvim" },
		config = function()
			require("noice").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup({
				highlight = { pattern = [[.*<(KEYWORDS)\s*]] },
				search = { pattern = [[\b(KEYWORDS)]] },
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					-- NOTE Change theme to `auto` if you are using different colorscheme
					theme = "pywal",
					globalstatus = true,
					section_separators = "",
					component_separators = "",
					disabled_filetypes = { "alpha" },
				},
				sections = {
					lualine_a = {
						{
							"mode",
							icon = "",
						},
					},
					lualine_b = {
						{
							"branch",
							icon = "",
						},
					},
					lualine_c = {
						{
							"diff",
							separator = "|",
							symbols = {
								added = " ",
								modified = " ",
								removed = " ",
							},
						},
						{
							"diagnostics",
							separator = "|",
							padding = { left = 1, right = 1 },
							update_in_insert = true,
							symbols = {
								error = " ",
								warn = " ",
								info = " ",
								hint = " ",
							},
						},
						{
							"filetype",
							padding = { left = 1 },
						},
					},
					lualine_x = {
						{
							function()
								local msg = "No Active Lsp"
								local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
								local clients = vim.lsp.get_active_clients()
								if next(clients) == nil then
									return msg
								end
								for _, client in ipairs(clients) do
									local filetypes = client.config.filetypes
									if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
										return client.name
									end
								end
								return msg
							end,
							icon = "󰂖 LSP:",
						},
					},
					lualine_y = {
						{
							"location",
							icon = "",
						},
					},
					lualine_z = { { "progress" } },
				},
				extensions = {
					"lazy",
					"mason",
					"nvim-tree",
					"nvim-dap-ui",
					"toggleterm",
					"trouble",
				},
			})
		end,
	},
	{
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		},
	},
	{
		"utilyre/barbecue.nvim",
		event = "BufEnter",
		dependencies = { "SmiteshP/nvim-navic" },
		config = function()
			require("barbecue").setup({
				show_dirname = false,
				show_basename = false,
			})
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			local transparent = require("transparent")
			transparent.setup({
				groups = {
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"CursorLine",
					"CursorLineNr",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
					"VertSplit",
					"Float",
					"NormalFloat",
				},
				extra_groups = {},
				exclude_groups = {},
			})
			transparent.clear_prefix("BufferLine")
			transparent.clear_prefix("NvimTree")
			transparent.clear_prefix("whichkey")
			transparent.clear_prefix("barbecue")
			transparent.clear_prefix("Lazy")
			transparent.clear_prefix("Mason")
		end,
	},
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		opts = {
			outline_window = {
				width = 20,
				auto_jump = true,
				jump_highlight_duration = 200,
			},
			symbols = { icon_source = "lspkind" },
		},
	},
}
