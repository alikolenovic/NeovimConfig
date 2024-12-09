-- Set leader key before lazy
vim.g.mapleader = " "

-- Diagnostic config for errors
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    float = {
        source = true,
        border = "rounded"
    },
})
-- Floating window keybind
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, silent = true })

require("ali.lazy_init")
require("ali.remap")
require("ali.set")
