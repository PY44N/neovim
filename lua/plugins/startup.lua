return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                config = {header = {"Neovim"}, shortcut = {}, footer = {}}
            }
        end,
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    }
}
