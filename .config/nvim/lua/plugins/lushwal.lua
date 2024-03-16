return {
  "oncomouse/lushwal.nvim",
  cmd = { "LushwalCompile" },
  dependencies = {
    { "rktjmp/lush.nvim" },
    { "rktjmp/shipwright.nvim" },
  },
  on_colors = function(colors)
    colors.bg_statusline = colors.none -- To check if its working try something like "#ff00ff" instead of colors.none
  end,
  config = function()
    vim.g.lushwal_configuration = {
      addons = {
        bufferline_nvim = true,
        gitsigns_nvim = true,
        indent_blankline_nvim = true,
        lualine = true,
        which_key_nvim = true,
      },
    }
  end,
}
