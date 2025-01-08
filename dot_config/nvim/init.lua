local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
vim.cmd("set number relativenumber!")
vim.api.nvim_set_hl(0, "LineNr", { fg = "yellow" })
vim.cmd("hi LineNrAbove guifg=grey")
vim.cmd("hi LineNrBelow guifg=grey")
vim.cmd("hi SignColumn guibg=#1d2021")
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>")
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>")
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.fillchars = { eob = " " }
vim.loader.enable()

require("lazy").setup({ import = "plugins" }, {
	install = {
		missing = true,
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		enabled = true,
		notify = false,
	},
	ui = {
		border = "rounded",
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
