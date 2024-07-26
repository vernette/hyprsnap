return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  config = function()
    local highlight = { "CursorColumn" }
    require("ibl").setup({
      indent = {
        highlight = highlight,
        char = "│",
        tab_char = "│",
      },
      whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
        },
      },
    })
  end,
}
