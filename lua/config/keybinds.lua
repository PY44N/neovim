-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>f', builtin.find_files,
               {desc = 'Telescope find files'})
vim.keymap.set('n', '<space>F', builtin.live_grep,
               {desc = 'Telescope live grep'})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Telescope buffers'})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags,
--                {desc = 'Telescope help tags'})

-- Escape from terminal
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])

-- Easy window navigation keys
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Close current window
vim.keymap.set("n", "<C-c>", ":close<CR>", {silent = true})

-- Open terminal
vim.keymap.set("n", "<C-`>", ":ToggleTerm size=10<CR>", {silent = true})
