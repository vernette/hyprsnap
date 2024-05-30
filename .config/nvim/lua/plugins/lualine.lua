return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    {
      "nvim-tree/nvim-web-devicons"
    },
    {
      "linrongbin16/lsp-progress.nvim",
      config = function() require("lsp-progress").setup() end,
    }
  },
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
            icon = "",
            separator = { right = "" }
          }
        },
        lualine_b = {
          {
            "branch",
            icon = "",
            separator = { right = "" }
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
            function()
              return require('lsp-progress').progress()
            end
          },
          {
            "encoding",
            icon = "󱁻"
          }
        },
        lualine_y = {
          {
            "location",
            icon = "",
            separator = { left = "", right = "" }
          }
        },
        lualine_z = {
          {
            "progress"
          }
        },
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
