return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    -- null_ls.setup({
    --   sources = {
    --     null_ls.builtins.diagnostics.eslint
    --   },
    -- })
    vim.keymap.set("n", "<space>gra", vim.lsp.buf.code_action, { noremap = true, silent = true })
  end,
}
