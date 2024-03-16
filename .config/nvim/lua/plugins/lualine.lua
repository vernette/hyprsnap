return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lushwal_theme_custom = require("lualine.themes.lushwal")
    lushwal_theme_custom.normal.c.bg = "none"
    require("lualine").setup({
      options = {
        theme = lushwal_theme_custom,
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = { "tabnine" },
        lualine_y = { "encoding", "filetype", "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
