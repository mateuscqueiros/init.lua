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
       }
     }
   }
 }

local nightly = {
  "Alexis12119/nightly.nvim",
  opts = {
    colorscheme = "nightly",
  }
}

return tokyonight
