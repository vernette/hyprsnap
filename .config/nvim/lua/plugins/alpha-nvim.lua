return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠙⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⡇⠀⠀⢠⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⡿⠛⠁⠀⠀⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⢀⣄⠀⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣦⡀⠀⠀⢀⣼⣿⣧⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠃⠀⠀⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠡⡀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠁⡀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠃⢸⡆⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⣠⣿⣷⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⢻⣿⣿⣿⣿⣶⣤⣤⣶⣾⣿⣿⣿⠀⠀⡀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⡇⢰⣿⣿⣿⣿⢿⣿⣿⣿⣿⠋⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⢳⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⣇⠸⣿⣿⣿⣿⠘⢿⣿⣿⡇⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⡞⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠹⡄⢻⣿⣿⣿⡆⠀⠉⠛⠃⠀⠀⠀⠀⠙⠿⠿⠿⠋⢹⣿⣿⣿⣿⣧⣤⡖⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠙⠆⠙⢿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠿⢻⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀ ]],
			[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠠⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
			dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Recently Used Files", "<Cmd>Telescope oldfiles<CR>"),
			dashboard.button("g", "󰊄  Find Word", "<Cmd>Telescope live_grep<CR>"),
			dashboard.button("q", "󰅚  Quit Neovim", ":qa<CR>"),
		}

		local function footer()
			local plugins = require("lazy").stats().count
			local v = vim.version()
			return string.format(" v%d.%d.%d  󰂖 %d ", v.major, v.minor, v.patch, plugins)
		end

		dashboard.section.footer.val = {
			footer(),
		}

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
