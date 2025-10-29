vim.lsp.enable('luals')
vim.lsp.enable('ruff')
vim.lsp.enable('pyright')

-- vim lsp configuration good docs
-- https://neovim.io/doc/user/lsp.html#vim.lsp.tagfunc()
--
-- Detailed lsp configurations examples:
-- https://medium.com/@ns090200/setting-up-neovim-from-scratch-3-lsp-08f2aea0d3e1

vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- vim.lsp.document_color.enable(true)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set({'n', 'i'}, '<c-Space>', vim.lsp.completion.get, opts) -- done by cmp, or blink
    vim.keymap.set({'n', 'i'}, '<C-s>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set({'n', 'v'}, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    -- vim.keymap.set('n', '<C-]>', vim.lsp.buf.scroll

    -- The existing working formatting configuration is good enough
    -- vim.keymap.set({'n', 'v'}, 'gq', vim.lsp.buf, opts)
  end,
})
