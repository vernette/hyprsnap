return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup({
      padding = true,
      toggler = {
        line = "<leader>/",
      },
      opleader = {
        line = "<leader>/",
      },
    })
  end,
}
