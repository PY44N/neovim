-- Escape to go to normal mode when in the terminal
map("t", "<esc>", [[<C-\><C-n>]])

-- Easy window navigation keys
map("n", "<M-h>", "<C-w>h")
map("n", "<M-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")

map('n', 'f', '<cmd> lua vim.lsp.buf.hover()<CR>')