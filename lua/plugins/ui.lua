return {
    {'echasnovski/mini.icons', version = false}, {
        'nvim-lualine/lualine.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    component_separators = {left = '', right = ''},
                    section_separators = {left = '', right = ''},
                    disabled_filetypes = {statusline = {}, winbar = {}},
                    ignore_focus = {},
                    always_divide_middle = true,
                    always_show_tabline = true,
                    globalstatus = false,
                    refresh = {statusline = 100, tabline = 100, winbar = 100}
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {
                        'branch', {
                            'diagnostics',
                            sources = {'nvim_diagnostic'}, -- Use Neovim's built-in diagnostics
                            sections = {'error', 'warn', 'info', 'hint'},
                            symbols = {
                                error = ' ',
                                warn = ' ',
                                info = ' ',
                                hint = ' '
                            },
                            colored = true, -- Enable color
                            update_in_insert = false, -- Update diagnostics in insert mode
                            always_visible = true -- Always show even if no errors
                        }
                    },
                    lualine_c = {'filename'},
                    lualine_x = {'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {"mason"}
            }
        end
    }, {
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup({
                show = true,
                show_in_active_only = false,
                set_highlights = true,
                folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
                max_lines = false, -- disables if no. of lines in buffer exceeds this
                hide_if_all_visible = false, -- Hides everything if all lines are visible
                throttle_ms = 100,
                handle = {
                    text = " ",
                    blend = 30, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
                    color = nil,
                    color_nr = nil, -- cterm
                    highlight = "CursorColumn",
                    hide_if_all_visible = true -- Hides handle if all lines are visible
                },
                marks = {
                    Cursor = {
                        text = "•",
                        priority = 0,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "Normal"
                    },
                    Search = {
                        text = {"-", "="},
                        priority = 1,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "Search"
                    },
                    Error = {
                        text = {"-", "="},
                        priority = 2,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "DiagnosticVirtualTextError"
                    },
                    Warn = {
                        text = {"-", "="},
                        priority = 3,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "DiagnosticVirtualTextWarn"
                    },
                    Info = {
                        text = {"-", "="},
                        priority = 4,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "DiagnosticVirtualTextInfo"
                    },
                    Hint = {
                        text = {"-", "="},
                        priority = 5,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "DiagnosticVirtualTextHint"
                    },
                    Misc = {
                        text = {"-", "="},
                        priority = 6,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "Normal"
                    },
                    GitAdd = {
                        text = "┆",
                        priority = 7,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "GitSignsAdd"
                    },
                    GitChange = {
                        text = "┆",
                        priority = 7,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "GitSignsChange"
                    },
                    GitDelete = {
                        text = "▁",
                        priority = 7,
                        gui = nil,
                        color = nil,
                        cterm = nil,
                        color_nr = nil, -- cterm
                        highlight = "GitSignsDelete"
                    }
                },
                excluded_buftypes = {"terminal"},
                excluded_filetypes = {
                    "dropbar_menu", "dropbar_menu_fzf", "DressingInput",
                    "cmp_docs", "cmp_menu", "noice", "prompt", "TelescopePrompt"
                },
                autocmd = {
                    render = {
                        "BufWinEnter", "TabEnter", "TermEnter", "WinEnter",
                        "CmdwinLeave", "TextChanged", "VimResized",
                        "WinScrolled"
                    },
                    clear = {"BufWinLeave", "TabLeave", "TermLeave", "WinLeave"}
                },
                handlers = {
                    cursor = false,
                    diagnostic = true,
                    gitsigns = false, -- Requires gitsigns
                    handle = true,
                    search = false, -- Requires hlslens
                    ale = false -- Requires ALE
                }
            })
        end
    }
}
