vim.cmd("GitBlameDisable")

gitblame_ops = {}
gitblame_ops.enabled = false
function gitblame_ops.toggle()
	if gitblame_ops.enabled then
		gitblame_ops.enabled = false
		vim.cmd("GitBlameDisable")
		vim.notify("GIT blame DISABLED", vim.log.levels.INFO)
	else
		gitblame_ops.enabled = true
		vim.cmd("GitBlameEnable")
		vim.notify("GIT blame ENABLED", vim.log.levels.INFO)
	end
end

function gitblame_ops.copySHA()
	vim.notify("GIT SHA copied!", vim.log.levels.INFO)
	vim.cmd("GitBlameCopySHA")
end

vim.keymap.set("n", "<leader>gb", gitblame_ops.toggle, {desc="Gitblame: toggle"})
vim.keymap.set("n", "<leader>gc", gitblame_ops.copySHA, {desc="Gitblame: copy SHA"})


return gitblame_ops
