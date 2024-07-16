return {
  "mistricky/codesnap.nvim",
  build = "make",
  keys = {
    { "<leader>cc", "<cmd>CodeSnap<cr>",     mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in predefined path" },
  },
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
      watermark = ""
    })
  end
}
