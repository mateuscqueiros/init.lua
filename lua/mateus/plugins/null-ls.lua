return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier.with {
          command = "/home/mateus/.npm-packages/lib/node_modules/prettier/bin",
          extra_filetypes = { "toml" },
        },
      },
    })
  end
}
