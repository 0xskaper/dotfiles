local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.cmd("set number relativenumber!")
vim.opt.rtp:prepend(lazypath)
require("vim-options")

vim.o.background = "dark"

vim.g.neovide_padding_top = 10
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
vim.g.neovide_underline_stroke_scale = 0.5
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_trail_size = 0.2
vim.g.neovide_refresh_rate = 120
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_scroll_animation_length = 0.8
vim.g.neovide_show_border = true
vim.g.neovide_fullscreen = false
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_position_animation_length = 0.10

vim.cmd("hi LineNr term=bold gui=bold cterm=bold guifg=#282828")
vim.cmd("hi LineNrAbove guifg=grey")
vim.cmd("hi LineNrBelow guifg=grey")
vim.cmd("hi SignColumn guibg=#282828")
vim.cmd("hi Visual guibg=#282828")
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>")
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>")
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.fillchars = { eob = " " }
vim.loader.enable()
require("lazy").setup("plugins")
