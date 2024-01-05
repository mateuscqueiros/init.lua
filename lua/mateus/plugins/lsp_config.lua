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
      config = function ()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls" }
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lsp_config = require("lspconfig")
        local on_attach = function(_, _)
          local keymap = vim.keymap
          local buf = vim.lsp.buf

          keymap.set('n', '<leader>rn', buf.rename, {})
          keymap.set('n', '<leader>ca', buf.code_action, {})

          keymap.set('n', 'gd', buf.definition, {})
          keymap.set('n', 'gi', buf.implementation, {})
          keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
          keymap.set('n', 'K', buf.hover, {})
        end

        lsp_config.lua_ls.setup {
          on_attach = on_attach,
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' }
              }
            }
          }
        }
      end
    }
  }
}
