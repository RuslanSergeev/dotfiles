function LineNumberColors()
    vim.api.nvim_set_hl(0, 'CursorLineNrAbove', { fg='white', bold=false })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='magenta', bold=true })
    vim.api.nvim_set_hl(0, 'CursorLineNrBelow', { fg='white', bold=false})
end

LineNumberColors()

_G.cursorLineColorEnabled = false
-- Define a Lua function to toggle the cursor line highlighting
vim.api.nvim_create_user_command(
    'ToggleCursorLine',
    function()
        if _G.cursorLineColorEnabled then
            _G.cursorLineColorEnabled = false
            -- Disable cursor line highlighting
            vim.cmd('hi clear CursorLine')
            vim.cmd(':highlight CursorLineNr ctermfg=LightMagenta')
            vim.wo.cursorline = true 
            -- lite gray background
            vim.cmd('hi CursorLine ctermbg=236 guibg=#808080')
        else
            _G.cursorLineColorEnabled = true
            -- Enable cursor line highlighting and set it to magenta
            vim.wo.cursorline = true
            vim.cmd('hi CursorLine cterm=bold ctermbg=234 guibg=#FF00FF')
        end
    end,
    {}
)

-- Set up a key mapping in normal mode to toggle the cursor line via the command
vim.api.nvim_set_keymap('n', '[h', ':ToggleCursorLine<CR>', { noremap = true, silent = true })

