return {
    "smoka7/hop.nvim",
    version = "*", -- Use the latest version
    opts = {
        keys = "etovxqpdygfblzhckisuran", -- Customize Hop keys
    },
    config = function(_, opts)
        local hop = require("hop")
        hop.setup(opts)

        -- Key bindings for Hop
        vim.keymap.set("n", "<leader>hw", hop.hint_words, { noremap = true, silent = true, desc = "Hop to word" })
        vim.keymap.set("n", "<leader>hl", hop.hint_lines, { noremap = true, silent = true, desc = "Hop to line" })
        vim.keymap.set("n", "<leader>hc", hop.hint_camel_case, { noremap = true, silent = true, desc = "Hop to line" })

    end,
}
