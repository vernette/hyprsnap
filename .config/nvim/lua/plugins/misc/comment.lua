return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    padding = true,
    -- ignores empty lines
    ignore = "^$",
  },
}
