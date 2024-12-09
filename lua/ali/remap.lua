local wk = require("which-key")

wk.add({
  -- File-related mappings
  { "<leader>f", group = "file" },       -- Leader key for  
  { "ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
  { "fb", function() print("hello") end, desc = "Foobar" },
  { "fn", desc = "New File" },
  { "f1", hidden = true }, -- Hidden mapping

  -- Window-related mappings
  {
    "<leader>w",
    group = "Windows",
    proxy = "<c-w>", -- Maps leader `w` actions to window commands
  },

  -- Buffer-related mappings with dynamic expansion
  {
    "<leader>b",
    group = "Buffers",
    expand = function()
      return require("which-key.extras").expand.buf()
    end,
  },

  -- Nested mappings for multiple modes
  {
    mode = { "n", "v" }, -- Normal and Visual mode
    { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
    { "<leader>w", "<cmd>w<cr>", desc = "Write" },
  }
})

