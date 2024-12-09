return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/playground",
  },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      ignore_install = {},
      modules = {},
      ensure_installed = {
        "c", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "python", "typescript", "go"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
