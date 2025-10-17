local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>t", api.tree.toggle,  { desc = "nvim-tree: Toggle", noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", api.tree.toggle_help, { desc = "nvim-tree: Toggle", noremap = true, silent = true })
