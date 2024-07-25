return {
  "mistricky/codesnap.nvim",
  lazy = false,
  build = "make",
  config = function()
    require("codesnap").setup({
      save_path = "~/Pictures/screenshots/code",
      border = "rounded",
      has_breadcrumbs = false,
      has_line_number = true,
      bg_theme = "grape",
      bg_x_padding = 122,
      bg_y_padding = 52,
      bg_padding = nil,
      watermark = "",
    })
  end,
}
