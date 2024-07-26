return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    view = {
      width = 20,
      side = "left",
      signcolumn = "no",
      preserve_window_proportions = false,
    },
    renderer = {
      group_empty = false,
      indent_width = 1,
      indent_markers = {
        enable = true,
        inline_arrows = false,
      },
      icons = {
        glyphs = {
          git = {
            unstaged = "",
            untracked = "",
          },
        },
      },
    },
    actions = {
      open_file = { resize_window = false },
    },
    filters = { dotfiles = false },
  },
}
