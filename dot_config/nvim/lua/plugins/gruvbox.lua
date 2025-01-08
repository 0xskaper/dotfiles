return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
			contrast = "soft",
			terminal_colors = true,
			palette_overrides = {
				dark0_hard = "#000000",
				dark0 = "#000000",
				dark1 = "#000000",
				bright_red = "#dd7575",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
