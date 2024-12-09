return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, desc = "Live Grep" })
    vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>", { noremap = true, desc = "Diagnostics" })
    vim.keymap.set("n", "<C-p>", builtin.git_files, { noremap = true, desc = "Diagnostics" })
    vim.keymap.set("n", "<leader>ps", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end,
      { noremap = true, desc = "Diagnostics" })
  end,
}
