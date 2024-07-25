return {
  "folke/which-key.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("which-key").setup({
      win = {
        border = "rounded",
        padding = { 1, 1, 1, 1 },
      },
    })
  end,
}
