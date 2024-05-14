return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "html",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "yaml",
        "hyprlang",
        "rasi",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },

      vim.filetype.add({
        extension = { rasi = "rasi" },
        pattern = {
          [".*/waybar/config"] = "jsonc",
          [".*/hypr/.*%.conf"] = "hyprlang",
        },
      }),
    })
  end,
}
