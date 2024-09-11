return {
 	"ellisonleao/gruvbox.nvim",
 	priority = 1000,
 	opts = ...,
 	config = function()
 		require("gruvbox").setup({
       terminal_colors = false,
       contrast = "hard",
       palette_overrides = {
         bright_red = "#dd7575",
       }
 		})
 		vim.cmd("colorscheme gruvbox")
 	end,
 }
