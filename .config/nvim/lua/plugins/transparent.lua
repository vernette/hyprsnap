return {
  "xiyaowong/transparent.nvim",
  config = function()
    local transparent = require("transparent")

    transparent.setup({
      groups = {
        "Normal",
        "NormalNC",
        "Comment",
        "Constant",
        "Special",
        "Identifier",
        "Statement",
        "PreProc",
        "Type",
        "Underlined",
        "Todo",
        "String",
        "Function",
        "Conditional",
        "Repeat",
        "Operator",
        "Structure",
        "LineNr",
        "NonText",
        "SignColumn",
        "CursorLine",
        "CursorLineNr",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
      },
      extra_groups = {},
      exclude_groups = {},
    })

    transparent.clear_prefix("BufferLine")
    transparent.clear_prefix("NeoTree")
  end,
}
