return {
    'easymotion/vim-easymotion',
    config = function ()
        vim.keymap.set(
            { "n", "x", "o" },
            "<leader>w", "<Plug>(easymotion-bd-w)",
            { remap = true, silent = true }
        )
        vim.keymap.set(
            "n",
            "<leader>l",
            "<Plug>(easymotion-bd-jk)",
            {remap = false, silent = true}
        )
    end
}
