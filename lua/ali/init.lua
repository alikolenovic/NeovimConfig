-- Set leader key before lazy
vim.g.mapleader = " "

vim.diagnostic.config({
    signs = true,
    float = {
        source = true,
        border = "rounded"
    },
})

require("ali.lazy_init")
require("ali.remap")
require("ali.set")
