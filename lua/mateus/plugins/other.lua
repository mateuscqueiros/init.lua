return {
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
  }, {
    "ThePrimeagen/vim-be-good",
    "junegunn/fzf.vim",
  },
  {
    "junegunn/fzf",
  },
  {
    "folke/neodev.nvim",
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      local keymap = vim.keymap

      vim.opt.termguicolors = true
      require("bufferline").setup{}

      keymap.set("n", "<leader>n", "<cmd>BufferLineCycleNext<CR>")
      keymap.set("n", "<leader>b", "<cmd>BufferLineCyclePrev<CR>")
    end
  }
}
