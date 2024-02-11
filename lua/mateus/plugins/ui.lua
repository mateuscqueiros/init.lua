return {
  {
    "folke/noice.nvim",
    -- enabled = false,
    opts = function() end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },
}
