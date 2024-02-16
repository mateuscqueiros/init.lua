return {
  { "vimpostor/vim-tpipeline" },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        globalstatus = true,
        component_separators = "",
        section_separators = "",
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
