vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.guifont = "JetBrainsMono NF:h12"

require('lualine').setup {
  options = { theme = 'gruvbox' },
  ...
}