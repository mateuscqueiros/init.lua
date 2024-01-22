local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = "Organize Imports",
  }
  vim.lsp.buf.execute_command(params)
end

return {
  organize_imports = organize_imports,
}
