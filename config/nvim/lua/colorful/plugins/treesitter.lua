return  {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	branch = 'master',
	build = ':TSUpdate',
	event = {"BufReadPost", "BufNewFile"},
	config = function()
		require("nvim-treesitter").setup {
			ensure_installed = {'python', 'lua', 'cpp', 'c', 'cmake', 'make', 'toml', 'yaml', 'markdown'},
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			autotag = {
			        enable = true,
			},
			disable = function(lang, buf)
			    local max_filesize = 5 * 1024 * 1024 -- 5 MB
			    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			    if ok and stats and stats.size > max_filesize then
				return true
			    end
			end,
		}
	end
}
