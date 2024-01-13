return {
  {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "tsserver" }
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lsp_config = require("lspconfig")

        local on_attach = require("mateus.keymaps").on_attach
        local function organize_imports()
          local params = {
            command = "_typescript.organizeImports",
            arguments = {vim.api.nvim_buf_get_name(0)},
            title = ""
          }
          vim.lsp.buf.execute_command(params)
        end

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("neodev").setup({})

        lsp_config.lua_ls.setup {
          on_attach = on_attach,
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' }
              },
              completion = {
                callSnipet = "Replace"
              }
            }
          }
        }

        lsp_config.tsserver.setup {
          on_attach = on_attach,
          capabilities = capabilities,
          commands = {
            FixImports = {
              organize_imports,
              description = "Organize imports"
            }
          }
        }

      end
    }
  }
}
