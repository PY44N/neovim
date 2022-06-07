local servers = { "sumneko_lua", "rust_analyzer", "clangd", "pylsp" }
require("nvim-lsp-installer").setup {
  ensure_installed = servers,
--   automatic_installation = true
}

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