-- Set leader key before lazy
vim.g.mapleader = " "

-- Key Mapping for netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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
vim.keymap.set("n", "<leader>dt", function()
    if vim.diagnostic.is_enabled() then
        vim.diagnostic.enable(false)
    else
        vim.diagnostic.enable(true)
    end
end)

require("ali.lazy_init")
require("ali.remap")
require("ali.set")
