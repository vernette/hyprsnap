return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("Comment").setup({
      padding = true,
      -- ignores empty lines
      ignore = "^$",
    })
  end,
}
