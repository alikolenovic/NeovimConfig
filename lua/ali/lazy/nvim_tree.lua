return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
          sort = {
            sorter = "case_sensitive",
          },
          view = {
            width = 30,
          },
          renderer = {
            group_empty = true,
          },
          filters = {
            dotfiles = true,
          },
        })

        -- Set key mapping for toggling nvim-tree
        vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
}
