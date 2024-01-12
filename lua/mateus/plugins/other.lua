return {
  {
    "tpope/vim-surround",
    "christoomey/vim-tmux-navigator",
    "folke/neodev.nvim",
    "junegunn/fzf",
    "ThePrimeagen/vim-be-good",
    "tpope/vim-fugitive"
  }, {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 1000
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  }, {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  }
}
