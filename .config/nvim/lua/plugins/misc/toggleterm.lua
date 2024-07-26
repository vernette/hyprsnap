return {
  "akinsho/toggleterm.nvim",
  cmd = "ToggleTerm",
  config = function()
    require("toggleterm").setup({
      hide_numbers = true,
      shade_terminals = false,
    })
  end,
}
