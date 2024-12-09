return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      -- LSP Server Configuration
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- TS Server
      lspconfig.ts_ls.setup { capabilities = capabilities }

      -- Tailwind Server
      lspconfig.tailwindcss.setup { capabilities = capabilities }

      -- Lua Server
      lspconfig.lua_ls.setup { capabilities = capabilities }

      -- Go Server
      lspconfig.gopls.setup {
        capabilities = capabilities,
        settings = {
          gopls = {
            analyses = {
              unusedvariable = true
            }
          }
        }
      }

      -- ESLint
      lspconfig.eslint.setup({
        settings = {
          format = { enable = true },
        },
        -- This formats on save don't need prettier lsp
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end
          -- Apply format-on-save for non-TypeScript files
          local excluded_filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "mjs" }
          local filetype = vim.bo[args.buf].filetype

          if not vim.tbl_contains(excluded_filetypes, filetype) and client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({
                  bufnr = args.buf,
                  id = client.id,
                })
              end,
            })
          end
        end
      })
    end
  }
}
