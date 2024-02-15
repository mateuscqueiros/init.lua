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
    },
    config = function()
      require("tokyonight").setup({
        on_colors = function(colors) colors.border = "#787878" end,
        transparent = false,
        style = "night",
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },
}

local nightly = {
  "Alexis12119/nightly.nvim",
  opts = {
    colorscheme = "nightly",
  },
  config = function()
    require("nightly").setup()
    vim.cmd.colorscheme("nightly")
  end,
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
      transparent = false,
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
  end,
}

local catppuccin = {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function() vim.cmd.colorscheme("catppuccin-mocha") end,
}

local themes = {
  catppuccin = catppuccin,
  tokyonight = tokyonight,
  rose_pine = rose_pine,
  solarized = solarized,
  nightly = nightly,
  onedark = onedark,
}

return themes.tokyonight
