return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("noice").setup({
      presets = { inc_rename = true }
    })
  end,
}
