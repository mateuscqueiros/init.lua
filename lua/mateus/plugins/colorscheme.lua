local tokyonight = {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      lazy = false,
      transparent = true,
      style = "moon",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}

local nightly = {
  "Alexis12119/nightly.nvim",
  opts = {
    colorscheme = "nightly",
  },
}

local solarized = {
  "maxmx03/solarized.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = "light" -- or 'light'

    vim.cmd.colorscheme("solarized")
  end,
}

local onedark = {
  "navarasu/onedark.nvim",
  config = function()
    local onedarktheme = require("onedark")

    onedarktheme.setup({
      style = "deep",
    })
    onedarktheme.load()
  end,
}

return onedark
