
local local_plugins = {
    {
        "rfceez",
        dir = "~/personal/rfceez",
        config = function()
            local rfc = require("rfceez")
            rfc.setup()
            vim.keymap.set("n", "<leader>ra", function() rfc.add() end)
            vim.keymap.set("n", "<leader>rd", function() rfc.rm() end)
            vim.keymap.set("n", "<leader>rs", function() rfc.show_notes() end)
            vim.keymap.set("n", "[r", function() rfc.nav_next() end)
            vim.keymap.set("n", "[[r", function() rfc.show_next() end)
        end
    },

    {
        "vim-apm", dir = "~/personal/vim-apm",
        config = function()
            --[[
            local apm = require("vim-apm")

            apm:setup({})
            vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
            --]]
        end
    },
    {
        "vim-with-me", dir = "~/personal/vim-with-me",
        config = function() end
    },
}

return local_plugins
