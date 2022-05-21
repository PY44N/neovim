local servers = { "sumneko_lua", "rust_analyzer", "clangd" }
require("nvim-lsp-installer").setup {
  ensure_installed = servers,
--   automatic_installation = true
}

local lsp = require('lspconfig')
local coq = require "coq"

for _, server in ipairs(servers) do
  lsp[server].setup {}
  lsp[server].setup(coq.lsp_ensure_capabilities())
end

vim.cmd("COQnow -s")