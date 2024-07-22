return {
	{ "onsails/lspkind.nvim" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = { border = "rounded" },
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = { auto_install = true },
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"lua-language-server",
					"stylua",
					"basedpyright",
					"ruff_lsp",
					"prettierd",
					"stylelint",
					"bash-language-server",
					"html-lsp",
					"shfmt",
				},
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					-- Lua
					null_ls.builtins.formatting.stylua,
					-- JS, TS, Vue, YAML, JSON, HTML, Markdown, CSS, etc
					null_ls.builtins.formatting.prettierd,
					null_ls.builtins.diagnostics.stylelint,
					-- Shell
					null_ls.builtins.formatting.shfmt,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
				settings = {
					basedpyright = {
						capabilities = capabilities,
						disableTaggedHints = true,
						disableOrganizeImports = true,
						analysis = {
							typeCheckingMode = "basic",
							ignore = { "*" },
						},
					},
				},
			})
			local ruff_config_path = vim.loop.os_homedir() .. "/.config/ruff.toml"
			lspconfig.ruff_lsp.setup({
				capabilities = capabilities,
				init_options = {
					settings = {
						format = {
							args = { "--config=" .. ruff_config_path },
						},
						lint = {
							args = { "--config=" .. ruff_config_path },
						},
					},
				},
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
		end,
	},
}
