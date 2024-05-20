return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "pywal",
        globalstatus = true,
        section_separators = "",
        component_separators = "",
        disabled_filetypes = {
          "alpha",
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = ""
          }
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            color = { gui = 'bold' }
          }
        },
        lualine_c = {
          { "filetype" },
          {
            "diff",
            padding = { left = 0, right = 1 },
            separator = "|",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            }
          },
          {
            "diagnostics",
            symbols = {
              error = ' ',
              warn = ' ',
              info = ' ',
              hint = ' '
            },
          }
        },
        lualine_x = {
          {
            "encoding",
            icon = "󱁻"
          }
        },
        lualine_y = {
          {
            "location",
            icon = "",
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
