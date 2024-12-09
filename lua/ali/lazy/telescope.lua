return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, desc = "Live Grep" })
    vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>", { noremap = true, desc = "Diagnostics" })
  end,
}
