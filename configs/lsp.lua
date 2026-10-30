-- Enable the standard Swift language server for Swift projects.
-- SDK and module flags come from the project's normal build system/database.
if vim.fn.executable("sourcekit-lsp") == 1 then
  vim.lsp.config("sourcekit", {
    filetypes = { "swift" },
    capabilities = require("modules.utils").get_lsp_capabilities(),
  })
  vim.lsp.enable("sourcekit")
end
