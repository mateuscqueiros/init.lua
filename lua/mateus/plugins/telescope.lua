return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "^node_modules/" },
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "BurntSushi/ripgrep",
  },
}
