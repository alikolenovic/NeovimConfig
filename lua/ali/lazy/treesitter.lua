return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/playground",
    "windwp/nvim-ts-autotag",
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

    -- Configure nvim-ts-autotag
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
      per_filetype = {
        ["html"] = {
          enable_close = false,
        },
        ["typescriptreact"] = { -- Enable for TypeScript React (TSX)
          enable_close = true,
        },
      }
    })
  end
}
