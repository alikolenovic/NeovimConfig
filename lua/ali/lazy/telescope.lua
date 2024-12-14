return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    -- Live Grep (Use Multi Grep instead)
    -- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, desc = "Live Grep" })

    -- Diagnostics
    vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>", { noremap = true, desc = "Diagnostics" })

    -- Help tags
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true, desc = "Find help tags" })

    -- Git files
    vim.keymap.set("n", "<C-p>", builtin.git_files, { noremap = true, desc = "Diagnostics" })

    -- Grep a string
    vim.keymap.set("n", "<leader>ps", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end,
      { noremap = true, desc = "Grep a string" })

    -- Edit the config files
    vim.keymap.set("n", "<leader>en", function()
      builtin.find_files {
        cwd = vim.fn.stdpath("config")
      }
    end)

    vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

    vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })


    -- Edit plugin files
    vim.keymap.set("n", "<leader>ep", function()
      builtin.find_files {
        cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
      }
    end)

    require "ali.telescope.multigrep".setup()
  end,
}
