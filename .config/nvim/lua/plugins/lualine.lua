return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    {
      "nvim-tree/nvim-web-devicons"
    }
  },
  config = function()
    local lualine = require("lualine")
    local theme = require("lualine.themes.pywal")

    lualine.setup({
      options = {
        theme = "pywal",
        globalstatus = true,
        section_separators = "",
        component_separators = "",
        disabled_filetypes = { "alpha" },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
          }
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            color = {
              fg = theme.normal.a.fg,
              bg = theme.replace.a.bg
            }
          },
        },
        lualine_c = {
          {
            "diff",
            separator = "|",
            color = { fg = theme.normal.a.bg },
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            }
          },
          {
            "diagnostics",
            separator = "|",
            color = { fg = theme.normal.b.bg },
            padding = { left = 1, right = 1 },
            update_in_insert = true,
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " "
            },
          },
          {
            "filetype",
            padding = { left = 1 }
          }
        },
        lualine_x = {
          {
            "encoding",
            icon = "󱁻",
          }
        },
        lualine_y = {
          {
            "location",
            icon = "",
            color = {
              fg = theme.normal.a.fg,
              bg = theme.replace.a.bg
            }
          }
        },
        lualine_z = { { "progress" } },
      },
      extensions = {
        "lazy",
        "mason",
        "nvim-tree",
        "nvim-dap-ui",
        "toggleterm",
      },
    })
  end
}
