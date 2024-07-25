return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        -- NOTE: Change theme to `auto` if you are using different colorscheme
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
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
          },
        },
        lualine_c = {
          {
            "diff",
            separator = "|",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
          },
          {
            "diagnostics",
            separator = "|",
            padding = { left = 1, right = 1 },
            update_in_insert = true,
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
          {
            "filetype",
            padding = { left = 1 },
          },
        },
        lualine_x = {
          {
            function()
              local msg = "No Active Lsp"
              local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
              local clients = vim.lsp.get_active_clients()
              if next(clients) == nil then
                return msg
              end
              for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                  return client.name
                end
              end
              return msg
            end,
            icon = "󰂖 LSP:",
          },
        },
        lualine_y = {
          {
            "location",
            icon = "",
          },
        },
        lualine_z = { { "progress" } },
      },
      extensions = {
        "lazy",
        "mason",
        "nvim-tree",
        "nvim-dap-ui",
        "toggleterm",
        "trouble",
      },
    })
  end,
}
