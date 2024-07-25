return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua.with({
          extra_args = { "--config-path", vim.loop.os_homedir() .. "/.config/nvim/tool_configs/stylua.toml" },
        }),
        -- JS, TS, Vue, YAML, JSON, HTML, Markdown, CSS, etc
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.stylelint,
        -- Shell
        null_ls.builtins.formatting.shfmt,
      },
    })
  end,
}
