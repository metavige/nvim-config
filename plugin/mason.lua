-- Setup Mason
require("mason").setup()
require("mason-lspconfig").setup {
  -- ensure_installed = { "lua_ls" },
  -- automatically setup servers
  automatic_installation = true
}

