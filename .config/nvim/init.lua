-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--vim.lsp.enable({ "lua_ls" })

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "jdtls" }
})
