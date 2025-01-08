return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		require("gruvbox").setup({
			contrast = "hard",
			terminal_colors = true,
			palette_overrides = {
				dark0_hard = "#282828",
				dark0 = "#282828",
				dark1 = "#282828",
				bright_red = "#dd7575",
			},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
