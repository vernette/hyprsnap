return {
  "mistricky/codesnap.nvim",
  cmd = { "CodeSnap", "CodeSnapSave" },
  build = "make",
  opts = {
    save_path = "~/Pictures/screenshots/code",
    border = "rounded",
    has_breadcrumbs = false,
    has_line_number = true,
    bg_theme = "grape",
    bg_x_padding = 122,
    bg_y_padding = 52,
    bg_padding = nil,
    watermark = "",
  },
}
