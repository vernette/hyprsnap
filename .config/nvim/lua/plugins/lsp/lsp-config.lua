return {
  "neovim/nvim-lspconfig",
  dependencies = { "onsails/lspkind.nvim" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          format = { enable = false },
        },
      },
    })
    lspconfig.basedpyright.setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
      end,
      settings = {
        basedpyright = {
          capabilities = capabilities,
          disableTaggedHints = true,
          disableOrganizeImports = true,
          analysis = {
            typeCheckingMode = "basic",
            ignore = { "*" },
          },
        },
      },
    })
    local ruff_config_path = vim.loop.os_homedir() .. "/.config/nvim/tool_configs/ruff.toml"
    lspconfig.ruff_lsp.setup({
      capabilities = capabilities,
      init_options = {
        settings = {
          format = { args = { "--config=" .. ruff_config_path } },
          lint = { args = { "--config=" .. ruff_config_path } },
        },
      },
    })
    lspconfig.html.setup({
      capabilities = capabilities,
    })
    lspconfig.bashls.setup({
      capabilities = capabilities,
    })
  end,
}
