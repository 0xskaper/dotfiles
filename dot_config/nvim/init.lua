local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- Latest stable release
		lazypath,
	})
end

vim.cmd("set number relativenumber!")
vim.opt.rtp:prepend(lazypath)
require("vim-options")

vim.o.background = "dark"

vim.cmd("hi LineNr term=bold gui=bold cterm=bold guifg=yellow")
vim.cmd("hi LineNrAbove guifg=grey")
vim.cmd("hi LineNrBelow guifg=grey")
vim.cmd("hi SignColumn guibg=#1d2021")
vim.cmd("vim.fn.fnamemodify(vim.fn.stdpath 'data' .. '/typst-preview/', ':p')")
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>")
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>")
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.fillchars = { eob = " " }
vim.loader.enable()
require("lazy").setup({ import = "plugins" }, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		enabled = true,
		notify = false,
	},
	ui = {
		-- border = "rounded"
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
