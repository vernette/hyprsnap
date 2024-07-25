return {
  "m4xshen/autoclose.nvim",
  lazy = false,
  config = function()
    require("autoclose").setup({
      options = {
        disabled_filetypes = {},
        disable_when_touch = true,
        pair_spaces = true,
      },
    })
  end,
}
