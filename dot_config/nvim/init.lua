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


vim.cmd("set termguicolors")
vim.cmd("set number relativenumber!")
vim.opt.rtp:prepend(lazypath)
require("vim-options")
require("lazy").setup("plugins")

vim.o.guifont = "FiraCode Nerd Font:Retina:h16"

vim.g.neovide_padding_top = 10
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 10
vim.g.neovide_padding_left = 10
vim.g.neovide_underline_stroke_scale = 0.5
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_trail_size = 0.3
vim.g.neovide_refresh_rate = 120
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_scroll_animation_length = 0.1
vim.g.neovide_show_border = false
vim.g.neovide_fullscreen = false
vim.g.neovide_cursor_animation_length = 0.05

vim.cmd("hi LineNr term=bold gui=bold cterm=bold guifg=yellow")
vim.cmd("hi LineNrAbove guifg=grey")
vim.cmd("hi LineNrBelow guifg=grey")
vim.cmd("hi SignColumn guibg=#1d2021")
vim.cmd("hi Visual guibg=#3c3836")
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.wrap = false
vim.loader.enable()
