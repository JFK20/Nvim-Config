-- load defaults i.e lua_lsp (also sets capabilities/on_init for "*" and on_attach via LspAttach)
require("nvchad.configs.lspconfig").defaults()

-- server defaults (cmd, filetypes, root markers) come from nvim-lspconfig's lsp/*.lua,
-- only overrides are listed here
vim.lsp.config("gopls", {
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=llvm",
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    clangdFileStatus = true,
  },
})

vim.lsp.enable { "html", "cssls", "gopls", "clangd" }

-- vim.lsp.config("dockerls", {
--   cmd = { "docker-language-server", "start", "--stdio" },
-- })
-- vim.lsp.enable "dockerls"
