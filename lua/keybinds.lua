function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Escape to go to normal mode when in the terminal
map("t", "<esc>", [[<C-\><C-n>]])

-- Easy window navigation keys
map("n", "<M-h>", "<C-w>h")
map("n", "<M-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")

-- Hotkey to close current window
map("n", "<C-c>", ":close<CR>", { silent = true })

map("n", "<M-p>", '"+gp', { silent = true })
map("n", "<M-y>", '"+y', {silent = true})

-- Telescope hotkeys
map("n", "<C-p>", ":Telescope find_files<cr>", {silent = true})