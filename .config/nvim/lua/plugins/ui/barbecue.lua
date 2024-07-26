return {
  "utilyre/barbecue.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "SmiteshP/nvim-navic" },
  opts = {
    show_dirname = false,
    show_basename = false,
  },
}
