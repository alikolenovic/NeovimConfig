-- Set leader key before lazy
vim.g.mapleader = " "

-- Key Mapping for netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Key Maps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Key mapping for yanking and pasting from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y')

vim.keymap.set({ "n", "v" }, "<leader>dc", '"+d')
vim.keymap.set({ "n", "v" }, "<leader>Dc", '"+D')

vim.keymap.set("n", "<leader>pc", '"+p')
vim.keymap.set("n", "<leader>Pc", '"+P')
-- Fix file endings
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*",
  callback = function()
    vim.opt_local.fileformat = "unix"
  end,
})

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
