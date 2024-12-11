return {
  -- amongst your other plugins
  'akinsho/toggleterm.nvim',
  config = function()
    local terminal = require("toggleterm")
    terminal.setup {}
    vim.keymap.set("n", "<leader>tt", function()
      vim.cmd("ToggleTerm")
    end, { remap = false, desc = "Toggle Term" })

    -- For in terminal
    vim.keymap.set("t", "<C-t>", function()
      vim.cmd("ToggleTerm")
    end, { remap = false, desc = "Toggle Term" })
  end
}
