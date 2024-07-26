return {
  "smjonas/inc-rename.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("inc_rename").setup()
  end,
}
