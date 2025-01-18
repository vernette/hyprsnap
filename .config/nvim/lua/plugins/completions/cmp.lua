return {
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "Zeioth/NormalSnippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    event = "BufReadPost",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/cmp-emoji" },
      { "SergioRibera/cmp-dotenv" },
      { "chrisgrieser/cmp-nerdfont" },
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
            show_labelDetails = true,
          }),
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          {
            name = "nvim_lsp",
            priority = 1000,
          },
          {
            name = "luasnip",
            priority = 850,
          },
          {
            name = "buffer",
            priority = 750,
          },
          {
            name = "path",
            priority = 650,
          },
          {
            name = "codeium",
            priority = 550,
          },
          {
            name = "cmdline",
            priority = 450,
          },
          {
            name = "dotenv",
            priority = 350,
          },
          {
            name = "nerdfont",
            priority = 250,
          },
          {
            name = "emoji",
            priority = 150,
          },
        }),
      })
      -- Completions for / search based on current buffer:
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      -- Completions for command mode
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({ { name = "path" } }, {
          {
            name = "cmdline",
            option = { ignore_cmds = {
              "Man",
              "!",
              "q",
              "x",
            } },
          },
        }),
      })
    end,
  },
}
