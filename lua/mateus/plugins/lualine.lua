return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "codedark",
        globalstatus = true,
        section_separators = "",
        component_separators = "",
      },
    })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
