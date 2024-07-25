return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({ ui = { border = "rounded" } })
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
}
