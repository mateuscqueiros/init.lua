return {
  {
    "folke/noice.nvim",
    opts = function() end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000
    }
  },
}
