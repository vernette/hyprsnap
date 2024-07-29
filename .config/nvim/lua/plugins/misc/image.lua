return {
  "3rd/image.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    integrations = {
      markdown = { only_render_image_at_cursor = true },
    },
  },
}
