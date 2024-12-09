return {
  -- amongst your other plugins
  'akinsho/toggleterm.nvim',
  config = function()
    local terminal = require("toggleterm")
    terminal.setup {}
  end
}
