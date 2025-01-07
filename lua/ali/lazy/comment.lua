return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      -- Custom mappings or configurations
      mappings = {
        -- Enable basic and extra mappings
        basic = true,
        extra = true,
      },
      -- Custom pre-hooks for typescriptreact
      pre_hook = function(ctx)
        local U = require("Comment.utils")

        -- Determine the filetype
        local filetype = vim.bo.filetype

        -- Adjust commentstring for typescriptreact files
        if filetype == "typescriptreact" then
          local type = ctx.ctype == U.ctype.line and "__default" or "__multiline"
          local location = nil
          if ctx.ctype == U.ctype.block then
            location = require("ts_context_commentstring.utils").get_cursor_location()
          end
          return require("ts_context_commentstring.internal").calculate_commentstring({
            key = type,
            location = location,
          })
        end
      end,
    })
  end,
  dependencies = {
    -- ts_context_commentstring dependency for jsx/tsx
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
}
