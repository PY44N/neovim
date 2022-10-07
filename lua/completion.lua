local servers = {"jdtls", "rust_analyzer"}
require("mason").setup()

local lsp = require('lspconfig')
local coq = require "coq"

for _, server in ipairs(servers) do
  lsp[server].setup {}
  
  -- Auto completion
  lsp[server].setup(coq.lsp_ensure_capabilities())

  -- Auto formatting
  lsp[server].setup { on_attach = require "lsp-format".on_attach }
end

vim.cmd("COQnow -s")

vim.cmd [[autocmd CursorHold * lua vim.lsp.buf.hover()]]