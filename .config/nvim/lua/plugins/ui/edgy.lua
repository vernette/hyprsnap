return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    animate = { enabled = false },
    bottom = {
      {
        ft = "toggleterm",
        size = { height = 0.2 },
      },
      {
        title = "Trouble",
        ft = "trouble",
        size = { height = 0.2 },
      },
    },
    left = {
      {
        title = "File Explorer",
        ft = "NvimTree",
        size = { width = 0.1 },
      },
    },
    right = {
      {
        title = "Outline",
        ft = "Outline",
        size = { width = 0.3 },
      },
      {
        title = "Git Status",
        ft = "fugitive",
        size = { width = 0.3 },
      },
    },
  },
}
