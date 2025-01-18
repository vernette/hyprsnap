return {
  "nvimtools/none-ls.nvim",
  event = { "InsertEnter", "BufReadPre", "InsertLeave" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua.with({
          extra_args = { "--config-path", vim.loop.os_homedir() .. "/.config/nvim/tool_configs/stylua.toml" },
        }),
        -- JavaScript, TypeScript, JSX, TSX, JSON, CSS and GraphQL
        null_ls.builtins.formatting.prettierd,
        -- null_ls.builtins.formatting.biome,
        null_ls.builtins.diagnostics.stylelint,
        -- Shell
        null_ls.builtins.formatting.shfmt.with({ extra_args = { "-i", "2", "-ci" } }),
        -- Dockerfile
        null_ls.builtins.diagnostics.hadolint,
      },
    })
  end,
}
