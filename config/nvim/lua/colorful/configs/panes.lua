local panes_ops = {}
local active = false
local mapped = {}

local function nmap(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, {silent=true, desc=desc, noremap=true})
	mapped[lhs]=rhs
end

function panes_ops.on()
	active = true
	print("⊞ window mode ON")
	nmap("$", "<C-w><lt>", "Panes: width smaller")
	nmap("%", "<C-w>-", "Panes: height smaller")
	nmap("^", "<C-w>+", "Panes: height bigger")
	nmap("~", "<C-w>>", "Panes: width bigger")
	nmap("h", "<C-w>h", "Panes: navigate left")
	nmap("j", "<C-w>j", "Panes: navigate down")
	nmap("k", "<C-w>k", "Panes: navigate up")
	nmap("l", "<C-w>l", "Panes: navigate right")
	nmap("s", ":sp<CR>", "Panes: split horizontal")
	nmap("v", ":vsp<CR>", "Panes: split vertical")
	nmap("w", panes_ops.off, "Panes: exit")
	nmap("<Esc>", panes_ops.off, "Panes: exit")
	nmap("<CR>", panes_ops.off, "Panes: exit")
end

function panes_ops.off()
    active = false
    print("window mode OFF")
    for lhs in pairs(mapped) do
	pcall(vim.keymap.del, "n", lhs)
    end
end

function panes_ops.toggle()
    if active then
        panes_ops.off()
    else
        panes_ops.on()
    end
end

function panes_borders()
    local colors = require("tokyonight.colors").setup()
    local util = require("tokyonight.util")

    local status_bar_active = util.darken(colors.purple, 0.5)
    local status_bar_passive = util.darken(colors.blue2, 0.6)
    -- Better pane separation and statusline contrast
    vim.opt.fillchars:append({
          horiz     = "─",
          horizup   = "┴",
          horizdown = "┬",
          vert      = "│",
          vertleft  = "┤",
          vertright = "├",
          verthoriz = "┼",
    })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#dddddd", bg = "#3b2747", bold=true}) -- "#1e1e1e", bold = true })
    vim.api.nvim_set_hl(0, "StatusLine",  { fg = "#dddddd", bg = "#624185", bold = true })
    vim.api.nvim_set_hl(0, "StatusLineNC",{ fg = "#dddddd", bg = "#3b2747", bold = true}) -- "#472151", bold = false })
    -- vim.api.nvim_set_hl(0, "NormalNC",    { bg = "#1a1a1a" })
end

panes_borders()

vim.keymap.set("n", "<leader>p", panes_ops.toggle, {desc="toggle window ops"})
-- vim.keymap.set('n', '<leader>t', function() vim.cmd("Ex") end, { desc = 'Project tree' })

return panes_ops
