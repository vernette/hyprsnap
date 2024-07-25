return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup({
      padding = true,
      -- ignores empty lines
      ignore = "^$",
    })
  end,
}
