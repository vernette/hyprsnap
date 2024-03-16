return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup()

    vim.keymap.set("n", "<Leader>/", function()
      return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)"
          or "<Plug>(comment_toggle_linewise_count)"
    end, { expr = true })
    vim.keymap.set("x", "<Leader>/", "<Plug>(comment_toggle_linewise_visual)")
  end,
}
