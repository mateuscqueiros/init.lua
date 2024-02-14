function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

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
      transparent = false,
      style = "night",
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
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = false,
  },
  config = function()
    require("solarized-osaka").setup({
      transparent = false, -- Enable this to disable setting the background color
    })
    vim.cmd.colorscheme("solarized-osaka")
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

local rose_pine = {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = false,
    })

    vim.cmd.colorscheme("rose-pine")

    ColorMyPencils()
  end,
}

local catppuccin = {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function() vim.cmd.colorscheme("catppuccin-mocha") end,
}

return tokyonight
