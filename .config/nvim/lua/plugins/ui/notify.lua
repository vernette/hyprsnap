return {
  "rcarriga/nvim-notify",
  lazy = false,
  config = function()
    require("notify").setup({
      background_colour = "#000000",
      render = "wrapped-compact",
      stages = "slide",
      timeout = 1000,
    })
  end,
}
