return {
  "hedyhli/outline.nvim",
  cmd = {
    "Outline",
    "OutlineOpen",
  },
  opts = {
    outline_window = {
      width = 20,
      auto_jump = true,
      jump_highlight_duration = 200,
    },
    symbols = { icon_source = "lspkind" },
  },
}
