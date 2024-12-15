return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			contrast = "hard",
			palette_overrides = {
				dark0_hard = "#32302f",
				darlk1 = "#32302f",
				bright_red = "#dd7575",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
