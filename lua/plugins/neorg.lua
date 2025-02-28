return {
    {
        "nvim-neorg/neorg",
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        dependencies = {
            {"vhyrro/luarocks.nvim", priority = 1000, config = true}
        },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},
                    ["core.completion"] = {
                        config = {engine = "nvim-cmp", name = "[Norg]"}
                    },
                    ["core.integrations.nvim-cmp"] = {},
                    ["core.concealer"] = {config = {icon_preset = "diamond"}},
                    ["core.keybinds"] = {
                        -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
                        config = {
                            default_keybinds = true,
                            neorg_leader = "<Leader><Leader>"
                        }
                    },
                    -- ["core.dirman"] = {
                    --     config = {
                    --         workspaces = {
                    --             Notes = "~/Nextcloud/Notes",
                    --             Work = "~/Nextcloud/Work"
                    --         }
                    --     }
                    -- }
                    ["core.esupports.metagen"] = {
                        config = {type = "auto", update_date = true}
                    },
                    ["core.qol.toc"] = {},
                    ["core.qol.todo_items"] = {},
                    ["core.looking-glass"] = {},
                    ["core.presenter"] = {config = {zen_mode = "zen-mode"}},
                    ["core.export"] = {},
                    ["core.export.markdown"] = {config = {extensions = "all"}},
                    ["core.summary"] = {},
                    ["core.tangle"] = {config = {report_on_empty = false}},
                    ["core.ui.calendar"] = {},
                    ["core.journal"] = {
                        config = {strategy = "flat", workspace = "Notes"}
                    }
                }
            }
        end
    }
}
