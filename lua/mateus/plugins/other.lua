return {
  {
    'windwp/nvim-ts-autotag',
    config = function()
      vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics,
        {
          underline = true,
          virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
          },
          update_in_insert = true,
        }
      )

      require('nvim-ts-autotag').setup()
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  {
    "tpope/vim-surround",
    "christoomey/vim-tmux-navigator",
  }, {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 1000
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }, {
    "ThePrimeagen/vim-be-good"
  },
  {
    "folke/neodev.nvim",
    opts = {}
  }
}
