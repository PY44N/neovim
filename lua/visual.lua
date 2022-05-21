vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.opt.splitright = true
vim.opt.splitbelow = true

require('lualine').setup {
    options = { theme = 'gruvbox' },
    ...
  }