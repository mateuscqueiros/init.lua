return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- table.insert(opts.routes, {
      --   filter = {
      --     event = "notify",
      --     find = "No information available",
      --   },
      --   opts = { skip = true },
      -- })

      -- opts.presets.lsp_doc_border = true
    end,
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
