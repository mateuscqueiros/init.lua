return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp_config = require("lspconfig")
      local util = require("lspconfig/util")

      local on_attach = require("mateus.keymaps").on_attach
      local organize_imports = require("mateus.commands").organize_imports

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("neodev").setup({})

      lsp_config.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          La = {
            diagnostics = {
              globals = { "vim" },
            },
            completion = {
              callSnipet = "Replace",
            },
          },
        },
      })

      lsp_config.tsserver.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        commands = {
          FixImp = {
            organize_imports,
            description = "Organize imports",
          },
        },
      })

      lsp_config.html.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lsp_config.cssls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function() require("mason").setup() end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "html", "cssls" },
      })
    end,
  },
}
